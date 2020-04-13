package com.jse52.prediction;

import com.jse52.sensors_persistence.PredictionQueueDL;
import com.jse52.sensors_persistence.SmartWatchValues;
import com.jse52.utils.ModelDL;
import com.jse52.wearos.Wearos;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class Prediction extends CordovaPlugin {
    PredictionQueueDL.StorageConfig storageConfig = new PredictionQueueDL.StorageConfig(1, SmartWatchValues.STEPS);
    final PredictionQueueDL predictionQueueDL = new PredictionQueueDL(storageConfig);
    String accelerator_values[], timeStamp = "";

    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("initialize")) {
            cordova.getThreadPool().execute(new Runnable() {
                public void run() {
                    initialize(args, callbackContext);
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
        } 
        return false;
    }

    protected void initialize(JSONArray args, CallbackContext callbackContext) {
        Wearos.updateConsole("Setup");
        accelerator_values = new String[3];
        SmartWatchValues.model = new ModelDL(this.cordova.getActivity().getApplicationContext(), SmartWatchValues.getDLModels());
        SmartWatchValues.STEPS = 35;//num_steps.getText().toString();
        SmartWatchValues.THRESHOLD_VALUE = 0.3f;//threshold.getText().toString();
    }

    protected void subscribe(final JSONArray args, final CallbackContext callbackContext) {
        try {
            Wearos.updateConsole("Subscribe");

            JSONObject obj = new JSONObject();
            JSONObject dataFile = new JSONObject();
            dataFile = args.getJSONObject(0);


            JSONObject acc_values_flt = dataFile.getJSONObject("accelerator");
            accelerator_values[0] = acc_values_flt.get("xAccel").toString();
            accelerator_values[1] = acc_values_flt.get("yAccel").toString();
            accelerator_values[2] = acc_values_flt.get("zAccel").toString();
            timeStamp = acc_values_flt.get("timeStamp").toString();

            predictionQueueDL.enqueueSample(accelerator_values, Long.parseLong(timeStamp) );

            if(predictionQueueDL.getFall() == 1)
            {
                addProperty(obj, "status", "" + predictionQueueDL.getFall());
                addProperty(obj, "fallTimeStamp", String.valueOf(predictionQueueDL.getFallTimeStamp() ) );
                PluginResult result = new PluginResult(PluginResult.Status.OK, obj);
                result.setKeepCallback(true);
                callbackContext.sendPluginResult(result);
            }


        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    protected void unsubscribe(JSONArray args, CallbackContext callbackContext) {
        
    }

    // this is used to create a json object with a key and a value
    private void addProperty(JSONObject obj, String key, Object value) {
        try {
            if (value == null) {
                obj.put(key, JSONObject.NULL);
            } else {
                obj.put(key, value);
            }
        } catch (JSONException e) {
            // handle exception
        }
    }
}
