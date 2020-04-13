package com.jse52.sensors_wearos;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.wearable.activity.WearableActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.jse52.R;


public class MainActivity extends WearableActivity implements DataService.HeartRateListener  {

    /*
    This class is responsible for the android wear app.
    The app should be able to:
    -Run as a service so that the user does not need to keep the app open.
    -Collect accelerometer data at a frequency of 32 ms. This should be done by either throwing a set number of samples away or by only sending a sample if we are at a interval of 32 ms. The latter option might be the best option.
    -Send samples to the Android phone app. https://developer.android.com/training/wearables/data-layer/index.html
     */
    Button btnStartService, btnStopService;
    TextView tv;
    private static final String TAG = "Accelerometer";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnStartService = findViewById(R.id.buttonStartService);
        btnStopService = findViewById(R.id.buttonStopService);
        tv = findViewById(R.id.textView);

        tv.setVisibility(View.GONE);
        btnStopService.setVisibility(View.GONE);
        btnStartService.setVisibility(View.VISIBLE);
        Log.d(TAG, "Created ...");

        DataService.addListener(this);


        btnStartService.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startService();
                btnStopService.setVisibility(View.VISIBLE);
                btnStartService.setVisibility(View.GONE);
                tv.setVisibility(View.VISIBLE);
            }
        });

        btnStopService.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                stopService();
                btnStopService.setVisibility(View.GONE);
                btnStartService.setVisibility(View.VISIBLE);
                tv.setVisibility(View.GONE);
            }
        });


    }

    public void startService() {
        Intent serviceIntent = new Intent(this, DataService.class);
        ContextCompat.startForegroundService(this, serviceIntent);
    }

    public void stopService() {
        Intent serviceIntent = new Intent(this, DataService.class);
        stopService(serviceIntent);
    }

    @Override
    public void onDataCollected(String data) {
        Log.d("Accelerometer - > data sent to watch UI", data);
        tv.setText(data);
    }
}
