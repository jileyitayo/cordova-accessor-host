package com.jse52.email;

import android.util.Log;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

/**
 * This class echoes a string called from JavaScript.
 */
public class Email extends CordovaPlugin {
    EmailClient emailClient;

    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("initialize")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    initialize(args, callbackContext);
                }
            });

            return true;
        } else if (action.equals("send")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    try {
                        send(args, callbackContext);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });

            return true;
        } 
        return false;
    }

    protected void initialize(JSONArray args, CallbackContext callbackContext) {
    }

    protected void send(JSONArray args, final CallbackContext callbackContext) throws JSONException, IOException {
        // get email and send
        JSONObject obj = new JSONObject();
        JSONObject dataFile = new JSONObject();
        dataFile = args.getJSONObject(0);


        JSONObject email_configuration = dataFile.getJSONObject("email_configuration");
        String name = email_configuration.get("recipient_name").toString();
        String email_address = email_configuration.get("recipient_email_address").toString();
        Log.d("Email" , "" + name + " " + email_address);
        EmailClient.sendEmail(this.cordova.getActivity().getApplicationContext(),email_address, name);

    }
}
