package com.jse52.wearos;

import android.util.Log;

import com.jse52.sensors.Collector;
import com.jse52.sensors.Sensor;
import com.jse52.sensors_wearos.AccelerometerSensor;
import com.jse52.sensors_wearos.HeartRateSensor;
import com.jse52.sensors_wearos.WearOSBandInterface;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;




/**
 * This class echoes a string called from JavaScript.
 */
public class Wearos extends CordovaPlugin {

    public static final String MSG_TAG = "Accelerometer"; // used for debugging
    public static final String HEARTRATE = "HEART_RATE"; // used for debugging
    public static final String ACCELEROMETER = "ACCELEROMETER"; // used for debugging


    // Specific to Service methodology.
    public static WearOSBandInterface wearOSBandInterface = null;

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
                    try {
                        Thread.sleep(5000);
                        subscribe(args, callbackContext);
                    } catch (JSONException | InterruptedException e) {
                        e.printStackTrace();
                    }
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
        updateConsole("Initializing..."); // display
        wearOSBandInterface = new WearOSBandInterface(this.cordova.getActivity().getApplicationContext());


    }


    protected void connect(JSONArray args, final CallbackContext callbackContext) {
        updateConsole( "Is connecting...");

    }

    protected void disconnect(JSONArray args, CallbackContext callbackContext) {
        updateConsole( "Is disconnecting...");
    }

    // this funciton receives data from the smart watch
    protected void subscribe(final JSONArray args, final CallbackContext callbackContext) throws JSONException {

        updateConsole( "Subscribing...");

        if(wearOSBandInterface.isBandConnected())
        {
            if (args.getString(0).equals(HEARTRATE))
            {

                HeartRateSensor heartRateSensor = new HeartRateSensor();
                heartRateSensor.subscribe( new Collector.SampleListener() {

                    @Override
                    public void onSampleReceived(Object[] sample, Sensor.SensorMetaData[] metaData, long timestamp) {
                        if (sample.length >= 1 && sample[0] != null) {
                            final String heartrateStr = String.format(HEARTRATE + ":%s\n", sample[0].toString());
//                            updateConsole( heartrateStr);

                            float res = Float.valueOf(sample[0].toString());

                            try {
                                // Send the Accelerometer Coordinate to the UI
                                JSONObject obj = new JSONObject();
                                addProperty(obj, "heartRate", res);
                                addProperty(obj, "timeStamp", timestamp);
                                PluginResult result = new PluginResult(PluginResult.Status.OK, obj);
                                result.setKeepCallback(true);
                                callbackContext.sendPluginResult(result);
                                updateConsole( "Sent");
                            } catch (Exception e) {
                                // handle exception
                            }
                        }
                    }
                } ) ;
            }

            else if (args.getString(0).equals(ACCELEROMETER))
            {
                AccelerometerSensor accelerometerSensor = new AccelerometerSensor();
                accelerometerSensor.subscribe(new Collector.SampleListener() {
                    // Collect Samples from the Watch
                    @Override
                    public void onSampleReceived(Object[] sample, Sensor.SensorMetaData[] metaData, long timestamp) {
                        if (sample.length >= 3 && sample[0] != null && sample[1] != null && sample[2] != null) {
                            final String accelStr = String.format("X:%s\nY:%s\nZ:%s\n", sample[0].toString(), sample[1].toString(), sample[2].toString());
                            updateConsole( accelStr);

                            float x = Float.valueOf(sample[0].toString());
                            float y = Float.valueOf(sample[1].toString());
                            float z = Float.valueOf(sample[2].toString());

                            try {
                                // Send the Accelerometer Coordinate to the UI
                                JSONObject obj = new JSONObject();
                                addProperty(obj, "X", x);
                                addProperty(obj, "Y", y);
                                addProperty(obj, "Z", z);
                                addProperty(obj, "timeStamp", timestamp);
                                PluginResult result = new PluginResult(PluginResult.Status.OK, obj);
                                result.setKeepCallback(true);
                                callbackContext.sendPluginResult(result);
                            } catch (Exception e) {
                                // handle exception
                            }
                        }
                    }
                });
            }
        }


    }


    protected void unsubscribe(JSONArray args, CallbackContext callbackContext) {
        
    }

    protected void isConnected(JSONArray args, CallbackContext callbackContext) {
        
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

    /**
     * This helps debug our program
     * @param text
     */
    public static  void updateConsole(String text){
        Log.d(MSG_TAG, text);
    }
}
