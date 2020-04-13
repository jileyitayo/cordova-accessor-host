
package com.jse52.sensors_wearos;

import android.util.Log;

import com.google.android.gms.wearable.MessageEvent;
import com.jse52.sensors.Collector;
import com.jse52.sensors.Sensor;
import com.jse52.sensors.Types;

import static com.jse52.wearos.Wearos.wearOSBandInterface;


/**
 * Built by Jesuloluwa Eyitayo (jse52@txstate.edu)
 */

public class AccelerometerSensor extends Sensor implements WearOSBandInterface.WearOSListener {

    // sensor information and data to be collected
    private static final String MAINLABEL = "wearos_accelerometer";

    // path from the wear os device (watch)
    private static final String PATH_DATA = "/accelerometer_data";

    // sensor statistic variables
    private boolean isSensorRegistered = false; // checks if sensor is registered

    // sample rate set
    private static final int SAMPLE_RATE = 32;



    public AccelerometerSensor() {
        super(MAINLABEL, new String[]{"x", "y", "z"}, new Types[]{Types.Float, Types.Float, Types.Float});

    }

    // register the sensor to the band interface
    public void subscribe(Collector.SampleListener sampleListener) {
        // If the sensor is already registered, unsubscribe first.
        if (isSensorRegistered) unsubscribe();

        // It is an average from experiment
        wearOSBandInterface.collector.setSampleRate(SAMPLE_RATE); // set the sample rate

        // add to the listeners
        wearOSBandInterface.addListener(this);

        // add this to the collector
        wearOSBandInterface.collector.addSensor(this);

        isSensorRegistered = true;

        // start collecting
        wearOSBandInterface.collector.begin();

        // add to collector listener
        wearOSBandInterface.collector.addListener(sampleListener);
    }

    // unregister the sensor from the band interface
    public void unsubscribe() {
        if (isSensorRegistered) wearOSBandInterface.removeListener(this);
        isSensorRegistered = false;

//        wearOSBandInterface.collector.removeListener(); // TODO: remove the sample listener
        wearOSBandInterface.collector.clearSensors(); // Clear the sensors from the collector.
    }


    @Override
    public void onDataReceived(MessageEvent e) {
        if (e.getPath().contains(PATH_DATA)) {
            String rawData = new String(e.getData());
            String[] flotsstr = rawData.split(",");

            Double doubles[] = {Double.parseDouble(flotsstr[0]) / -9.8, Double.parseDouble(flotsstr[1]) / -9.8, Double.parseDouble(flotsstr[2]) / -9.8};
            Object data[] = {doubles[0].floatValue(), doubles[1].floatValue(), doubles[2].floatValue()};
            update(data);
            Log.d(PATH_DATA, String.valueOf(doubles[0].floatValue()) +  String.valueOf(doubles[1].floatValue()) + String.valueOf(doubles[2].floatValue()));
        }
    }
}