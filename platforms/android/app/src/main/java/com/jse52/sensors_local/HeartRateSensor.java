package com.jse52.sensors_local;

import android.content.Context;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

import com.jse52.sensors.Sensor;
import com.jse52.sensors.Types;


/**
 * " Conceptually, this sensor provides you with acceleration data according to the following relationship:
 * linear acceleration = acceleration - acceleration due to gravity. "
 * <p>
 * https://developer.android.com/guide/topics/sensors/sensors_motion.html#sensors-motion-linear
 */
public class HeartRateSensor extends Sensor {
    private SensorManager manager;
    private Context context;

    private android.hardware.Sensor sensor;
    private boolean isSensorRegistered = false;
    private int samplingRate;

    private SensorEventListener listener = new SensorEventListener() {

        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            //Log.d("Accelerometer", "sensorEvent: " + sensorEvent.toString());
            update(
                    sensorEvent.values[0] // HeartRate Sensor
            );
        }

        @Override
        public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
        }
    };

    /**
     * Constructs an instance of Sensor.
     *
     * @param context      The Android context object.
     * @param samplingRate The sampling rate (SensorManager.SENSOR_DELAY_*)
     */
    public HeartRateSensor(Context context, int samplingRate) {
        super(
                "hear_rate",
                new String[]{"heartrate"},
                new Types[]{Types.Float}
        );

        this.manager = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
        this.context = context;
        this.samplingRate = samplingRate;
    }

    public void subscribe() {
        // If the sensor is already registered, unsubscribe first.
        if (isSensorRegistered) unsubscribe();

        // Get instance of Android sensor object.
        sensor = this.manager.getDefaultSensor(android.hardware.Sensor.TYPE_HEART_RATE);

        // Register the event listener.
        isSensorRegistered = this.manager.registerListener(listener, sensor, samplingRate, samplingRate + 100);
    }

    public void unsubscribe() {
        if (isSensorRegistered && sensor != null) {
            this.manager.unregisterListener(listener);
        }

        isSensorRegistered = false;
    }

    public void flush() {
        //manager.flush(listener);
    }
}
