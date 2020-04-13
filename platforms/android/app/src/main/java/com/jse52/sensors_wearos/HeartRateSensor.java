
package com.jse52.sensors_wearos;

import com.google.android.gms.wearable.MessageEvent;
import com.jse52.sensors.Collector;
import com.jse52.sensors.Sensor;
import com.jse52.sensors.Types;

import static com.jse52.wearos.Wearos.wearOSBandInterface;


/**
 * Built by Jesuloluwa Eyitayo (jse52@txstate.edu)
 */

public class HeartRateSensor extends Sensor implements WearOSBandInterface.WearOSListener {

    // sensor information and data to be collected
    private static final String MAINLABEL = "heartrate";
    private static final String DIMENSION_VALUE = "bpm";


    // path from the wear os device (watch)
    private static final String PATH_DATA = "/heart_rate_data";

    // sensor statistic variables
    private boolean isSensorRegistered = false; // checks if sensor is registered


    public HeartRateSensor() {
        super(MAINLABEL, new String[]{DIMENSION_VALUE}, new Types[]{Types.Float});

    }

    // register the sensor to the band interface
    public void subscribe(Collector.SampleListener sampleListener) {
        // If the sensor is already registered, unsubscribe first.
        if (isSensorRegistered) unsubscribe();
        isSensorRegistered = true;

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

        wearOSBandInterface.collector.clearSensors(); // Clear the sensors from the collector.

    }


    @Override
    public void onDataReceived(MessageEvent e) {
        if (e.getPath().contains(PATH_DATA)) {
            String rawData = new String(e.getData());
            String[] flotsstr = rawData.split(",");
            Object data[] = {Float.parseFloat(flotsstr[0])};
            update(data);
        }
    }
}