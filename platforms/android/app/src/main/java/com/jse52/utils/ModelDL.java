package com.jse52.utils;

import android.content.Context;

import com.jse52.sensors_persistence.SmartWatchValues;

import java.util.ArrayList;



public class ModelDL {
    private Float[] model_weights;
    private ArrayList<TensorflowModel> model_list = new ArrayList<>();

    public ModelDL(Context c, String[] model_files) {
        for (String m : model_files) {
            model_list.add(new TensorflowModel(c, m));
        }

    }

    public float predict(Float[][] data) {
        float output = 0.0f;
        for (int i = 0; i < model_list.size(); i++) {
            output += model_list.get(i).predict(data)[0] * SmartWatchValues.model_weights[i];
        }

        return output;
    }
}
