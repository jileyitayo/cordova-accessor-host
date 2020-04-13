package com.jse52.sensors_wearos;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.CapabilityInfo;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.Wearable;
import com.jse52.R;

import java.util.ArrayList;
import java.util.List;


//starting to fix many threads issue
public class DataService extends Service implements SensorEventListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, CapabilityApi.CapabilityListener {
    public static final String CHANNEL_ID = "ForegroundServiceChannel";
    private SensorManager mSensorManager;
    private Sensor accelerometer, heartrate, motion;
    private float[] values;
    private GoogleApiClient googleApiClient;

    private String ACC_PATH_DATA = "/accelerometer_data";
    private String SKIN_TEMP_PATH_DATA = "/skin_temperature_data";
    private String HEART_RATE_PATH_DATA = "/heart_rate_data";

    private String DIR_DATA = "wearos_capability";
    private Node nodeForTimeEntry;
    private static final String TAG = "Accelerometer";

    private static List<HeartRateListener> hrListeners = new ArrayList<>();

    public DataService() {

    }

    @Override
    public void onCreate()  {
        super.onCreate();
    }

    public static void addListener(HeartRateListener listener){
        hrListeners.add(listener);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {

        String input = intent.getStringExtra("inputExtra");
        createNotificationChannel();
        Intent notificationIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(this,
                0, notificationIntent, 0);

        Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID)
                .setContentTitle("Foreground Service")
                .setContentText(input)
                .setSmallIcon(R.drawable.ic_cc_checkmark)
                .setContentIntent(pendingIntent)
                .build();

        startForeground(1, notification);

        googleApiClient = new GoogleApiClient.Builder(this)
                .addApi(Wearable.API)
                .addConnectionCallbacks(this) // onConnected, onConnectionSuspended
                .addOnConnectionFailedListener(this) // onConnectionFailed
                .build();


        mSensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
//        List<Sensor> deviceSensors = mSensorManager.getSensorList(Sensor.TYPE_ALL); // gets a list of all the sensors in a device


//        motion = mSensorManager.getDefaultSensor(Sensor.TYPE_SIGNIFICANT_MOTION);

        // accelerometer
//        accelerometer = mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
//        boolean sensorAccelerometerRegistered = mSensorManager.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_GAME);
//        Log.d("Sensor Status:", " Accelerometer Sensor registered: " + (sensorAccelerometerRegistered ? "yes" : "no"));


        // heart rate
        heartrate = mSensorManager.getDefaultSensor(Sensor.TYPE_HEART_RATE);
        boolean sensorHeartRateRegistered = mSensorManager.registerListener(this, heartrate, SensorManager.SENSOR_DELAY_FASTEST);
        Log.d(TAG + " = Sensor Status:", " Heart Rate Sensor registered: " + (sensorHeartRateRegistered ? "yes" : "no"));

        return START_NOT_STICKY;
    }
    @Override
    public void onSensorChanged(SensorEvent event) {
        Sensor sensor = event.sensor;
        Log.d(TAG, "SENSOR DATA");
        if (sensor.getType() == Sensor.TYPE_HEART_RATE)
        {
            values = event.values;
            for (HeartRateListener hrL : hrListeners)
                hrL.onDataCollected(String.valueOf(values[0]));
            sendMessage(HEART_RATE_PATH_DATA, "" + values[0] );
            Log.d(TAG, "GETTING HEART RATE SENSOR DATA ->" + values[0]);
        }
        else if (sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
            values = event.values;              //changed to a global value
            //if (hrListener != null)
            for (HeartRateListener hrL : hrListeners)
                hrL.onDataCollected(String.valueOf(values[0]));
            sendMessage(ACC_PATH_DATA, "" + values[0] + "," + values[1] + "," + values[2]);
            Log.d(TAG, "GETTING HEART RATE SENSOR DATA ->" + values[0]);
            Log.d(TAG, "GETTING ACCELEROMETER SENSOR DATA ->" + values[0] + values[1] + values[2]);
        }




    }
    private void connect() {
        if (!googleApiClient.isConnected()) {
            //googleApiClient.blockingConnect(); //looks like we are in UI thread... :(
            googleApiClient.connect();
        }
        else{
            googleApiClient.reconnect();
        }
    }
    public void disconnect(){
        googleApiClient.disconnect();
    }


    public void sendMessage(final String path, final String message) {


        if(nodeForTimeEntry != null) {
            Wearable.MessageApi.sendMessage(googleApiClient, nodeForTimeEntry.getId(), path, message.getBytes());//.setResultCallback(new ResultCallback<MessageApi.SendMessageResult>() {
            Log.d(TAG, "SENDING MESSAGE ... CHECK PHONE -> message " + message);
        }
        else{
            connect();
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

        System.out.println("Accuracy changed. Does something need to change?");
    }


    @Override
    public void onConnected(@Nullable Bundle bundle) {
        Wearable.CapabilityApi.getCapability(googleApiClient, DIR_DATA, CapabilityApi.FILTER_REACHABLE)
                .setResultCallback(new ResultCallback<CapabilityApi.GetCapabilityResult>() {
                    @Override
                    public void onResult(CapabilityApi.GetCapabilityResult result) {
                        //we’ll define this method later
                        determineNodeForDataRetrieval(result.getCapability().getNodes());
                    }
                });

        Wearable.CapabilityApi.addCapabilityListener(googleApiClient, this, DIR_DATA);
    }

    @Override
    public void onConnectionSuspended(int i) {
        Wearable.CapabilityApi.removeCapabilityListener(googleApiClient, this, DIR_DATA);
        nodeForTimeEntry = null;
    }

    @Override
    public void onCapabilityChanged(CapabilityInfo capabilityInfo) {
        determineNodeForDataRetrieval(capabilityInfo.getNodes());
    }

    private void determineNodeForDataRetrieval(Iterable<Node> nodes) {
        Node nodeToUse = null;
        for (Node node : nodes) {
            if (node.isNearby()) {
                nodeToUse = node;
                break;
            }
            nodeToUse = node;
        }

        if(nodeToUse == null) {
            nodeForTimeEntry = null;
        } else {
            nodeForTimeEntry = nodeToUse;
        }
    }
    @Override
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {

    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mSensorManager.unregisterListener(this);
        disconnect();
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel serviceChannel = new NotificationChannel(
                    CHANNEL_ID,
                    "Foreground Service Channel",
                    NotificationManager.IMPORTANCE_DEFAULT
            );

            NotificationManager manager = getSystemService(NotificationManager.class);
            manager.createNotificationChannel(serviceChannel);
        }
    }


    interface HeartRateListener
    {
        void onDataCollected(String data);
    }

}