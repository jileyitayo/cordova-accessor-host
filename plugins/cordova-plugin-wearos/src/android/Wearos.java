package com.jse52.wearos;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class Wearos extends CordovaPlugin {

    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("initialize")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    initialize(args, callbackContext);
                }
            });

            return true;
        } else if (action.equals("connect")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    connect(args, callbackContext);
                }
            });

            return true;
        } else if (action.equals("disconnect")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    disconnect(args, callbackContext);
                }
            });

            return true;
        } else if (action.equals("subscribe")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    subscribe(args, callbackContext);
                }
            });

            return true;
        } else if (action.equals("unsubscribe")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    unsubscribe(args, callbackContext);
                }
            });

            return true;
        } else if (action.equals("isConnected")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    isConnected(args, callbackContext);
                }
            });
            return true;
        }
        return false;
    }

    protected void initialize(JSONArray args, CallbackContext callbackContext) {
        
    }

    protected void connect(JSONArray args, final CallbackContext callbackContext) {
        
    }

    protected void disconnect(JSONArray args, CallbackContext callbackContext) {
        
    }

    protected void contact(JSONArray args, final CallbackContext callbackContext) {
        
    }

    protected void consent(JSONArray args, final CallbackContext callbackContext) {
        
    }

    protected void subscribe(final JSONArray args, final CallbackContext callbackContext) {
        
    }

    protected void unsubscribe(JSONArray args, CallbackContext callbackContext) {
        
    }

    protected void isConnected(JSONArray args, CallbackContext callbackContext) {
        
    } 
}
