package com.jse52.sensors_persistence;

import com.jse52.utils.ModelDL;

import org.tensorflow.contrib.android.TensorFlowInferenceInterface;


/**
 * Some default persistence values and methods for use by SmartWatch.
 */
public class SmartWatchValues {


    public static final int batch_size = 1;
    public static final int time_steps = 35;
    public static final int num_inputs = 3;
    public static final String[] output_tensor_names = {"Output"};
//    public static final float[] model_weights = {0.23789747f, 0.26687294f, 0.26385036f, 0.26205218f};
    public static final float[] model_weights = {0.23634656f, 0.24966969f, 0.26575625f, 0.3082514f};
    public static ModelDL model;
    public static String ALBUM_NAME = "SmartWatch Samples";
    public static int TRIGGER = 125; //Number of data per Prediction. Related to Prediction interval.
    public static int WINDOW_SIZE = 750; //unit: millisecond
    public static float SAMPLE_FREQUENCY = 31.25f; //unit: (time/second)
    public static int DATA_PER_WINDOW = 45; //How many data are compared at once
    public static int REWRITE_INTERVAL = 10; //How many rounds of predictions for rewriting of default.csv to happen
    public static int OVERLAP_RADIUS = 3;
    public static int THRESHOLD_LOW = 3; //Thresholds for heuristic function
    public static int THRESHOLD_HIGH = 50;
    // Unique to DL
    public static Float THRESHOLD_VALUE = 0.3f;
    public static int STEPS = 35;
    public static TensorFlowInferenceInterface inferenceInterface = null;
    // Deep learning model variables
    private static String MODEL_NAME = "models/frozen_Model_Best_0.3thresh_45steps.pb";
    private static String[] MODELS = {"models/frozen_fall%5CBaselineRetrain_292e.pb", "models/frozen_fall%5CBaselineRetrain_330e.pb", //Mick exp2 specific data
            "models/frozen_fall%5CBaselineRetrain_885e.pb", "models/frozen_fall%5CBaselineRetrain_926e.pb"}; //

//    private static String[] MODELS = {"models/frozen_fallmodel1_BaselineRetrain_168e.pb", "models/frozen_fallmodel1_BaselineRetrain_276e.pb",
//            "models/frozen_fallmodel1_BaselineRetrain_857e.pb", "models/frozen_fallmodel1_BaselineRetrain_999e.pb"}; //generic

    public static String getModelName() {
        return MODEL_NAME;
    }

    public static void setModelName(String name) {
        if (isNBorSVM(name)) {
            MODEL_NAME = name;
            ALBUM_NAME = "SmartWatch Samples";
            TRIGGER = 100;
            WINDOW_SIZE = 750;
            SAMPLE_FREQUENCY = 31.25f;
            DATA_PER_WINDOW = (int) (WINDOW_SIZE / (1000 / SAMPLE_FREQUENCY));
            REWRITE_INTERVAL = 10;
            OVERLAP_RADIUS = 3;
            THRESHOLD_LOW = 3;
            THRESHOLD_HIGH = 50;

            THRESHOLD_VALUE = null;
            STEPS = 0;
            inferenceInterface = null;
        } else {
            MODEL_NAME = name;
            ALBUM_NAME = "SmartWatch Samples";
            TRIGGER = 125;
            WINDOW_SIZE = 750;
            SAMPLE_FREQUENCY = 31.25f;
            DATA_PER_WINDOW = 45;
            REWRITE_INTERVAL = 10;
            OVERLAP_RADIUS = 3;
            THRESHOLD_LOW = 3;
            THRESHOLD_HIGH = 50;

            THRESHOLD_VALUE = 0.3f;
            STEPS = 35;
            inferenceInterface = null;
        }
    }

    public static String[] getDLModels() {
        return MODELS;
    }

    private static boolean isNBorSVM(String name) {
        System.out.print("IN IS NB OR SVM ");
        System.out.println(name.contains("naivebayes") || name.contains("svm"));
        return name.contains("naivebayes") || name.contains("svm");
    }

    public static boolean isNBorSVM() {
        return isNBorSVM(MODEL_NAME);
    }


}
