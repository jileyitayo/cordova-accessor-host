package com.jse52.sensors_wearos;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.MessageClient;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.Wearable;
import com.jse52.sensors.Collector;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;



public class WearOSBandInterface implements MessageClient.OnMessageReceivedListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    private static final String TAG = "WearOS Sensor"; // for debugging purpose
    private boolean dataReceived = false; // checks if sensor is registered
    private boolean connected = false; // checks if device is connected


    GoogleApiClient mGoogleApiClient;
    private final Set<WearOSBandInterface.WearOSListener> listeners = Collections.synchronizedSet(new HashSet<WearOSListener>());
    public final Collector collector = new Collector();

    public WearOSBandInterface(Context ctx) {

        if (null == mGoogleApiClient) {
            mGoogleApiClient = new GoogleApiClient.Builder(ctx)
                    .addApi(Wearable.API)
                    .addConnectionCallbacks(this)
                    .addOnConnectionFailedListener(this)
                    .build();
            Log.d(TAG, "GoogleApiClient created");
        }

        //Should we wait to confirm a connection before registering the listener..?
        connect();

    }


    @Override
    public void onConnectionSuspended(int cause) {
        Log.v(TAG, "onConnectionSuspended called");
    }

    @Override
    public void onConnectionFailed(ConnectionResult connectionResult) {
        Log.v(TAG, "onConnectionFailed called");
    }

    @Override
    public void onConnected(Bundle connectionHint) {
        connect();
        Log.v(TAG, "onConnected called");

    }

    public void connect(){
        if(!isBandConnected())
        {
            mGoogleApiClient.connect();
            Wearable.MessageApi.addListener(mGoogleApiClient, this);
            connected = true;
            Log.d(TAG, "Connecting to GoogleApiClient..");
        }

    }
    public void disconnect(){
        if(isBandConnected())
        {
            Wearable.MessageApi.removeListener(mGoogleApiClient, this);
            mGoogleApiClient.disconnect();
            connected = false;
        }
    }

    public Boolean isBandConnected(){
        return connected;
    }


    public void addListener(WearOSListener dataListener) {
        this.listeners.add(dataListener);
    }


    public void removeListener(WearOSListener dataListener) {
        this.listeners.remove(dataListener);
    }

    public boolean reconnect() {
        //System.out.println("reconnect");
        if (dataReceived){
            System.out.println("Connected!");
            return false;
        }
        else{
            if (mGoogleApiClient.isConnected()) {
                System.out.println("reconnecting...");
                Wearable.MessageApi.removeListener(mGoogleApiClient, this);
                mGoogleApiClient.disconnect();
                //mGoogleApiClient.connect();
                //mGoogleApiClient.clearDefaultAccountAndReconnect();
                mGoogleApiClient.reconnect();
            }
            else
            {
                mGoogleApiClient.connect();
            }
            while(mGoogleApiClient.isConnecting()){
                System.out.println("Connecting....");
            }
            Wearable.MessageApi.addListener(mGoogleApiClient,this);
            return true; //Enable this to constantly loop until data is recieved
            //return false;
        }
    }


    @Override
    public void onMessageReceived(MessageEvent messageEvent) {
        if(!dataReceived){
            dataReceived = true;
        }
        for (WearOSListener listener : listeners) listener.onDataReceived(messageEvent);

    }

    public interface WearOSListener {

        void onDataReceived(MessageEvent e);
    }

}
