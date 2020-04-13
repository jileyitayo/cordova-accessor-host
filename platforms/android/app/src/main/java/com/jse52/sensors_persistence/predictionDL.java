package com.jse52.sensors_persistence;

/**
 * Created by Brock on 7/6/2016.
 * <p>
 * The Prediction class is used to predict rather or not someone has fallen. It uses weka and libsvm
 * to predict. Groupings of samples are predicted at one time to make sure every instance is classified.
 */

import com.jse52.utils.ModelDL;

import org.tensorflow.contrib.android.TensorFlowInferenceInterface;


public class predictionDL {
    private final String MODEL_FILE = "file:///android_asset/models" + SmartWatchValues.getModelName();
//    private final Context context; // do we need this?
    private TensorFlowInferenceInterface inferenceInterface;
    private float[] outputs;
    private String[] outputNames;
    private ModelDL model;


    //Context passed from main activity so this class can access the model in the assets folder.
    //countSet is passed to the class so the Prediction method knows how many new rows are in the csvfile.
//    public predictionDL(Context context) {
//        this.context = context;
//    }

    public predictionDL() {
    }


    public float predict(Float[][] samples) {
//        return 0;
        return SmartWatchValues.model.predict(samples);
    }
}
