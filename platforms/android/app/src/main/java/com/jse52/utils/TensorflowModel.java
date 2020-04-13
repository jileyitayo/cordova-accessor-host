package com.jse52.utils;

import android.content.Context;

import com.jse52.sensors_persistence.SmartWatchValues;

import org.tensorflow.Operation;
import org.tensorflow.contrib.android.TensorFlowInferenceInterface;


/* Taylor Mauldin
 *
 * Individual TensorFlow model. Supports RNN type models.
 * Can be modified to support further model types simply by editing the shape of
 * the input matrix to the network, as defined currently with batch_size, num_inputs, and steps.
 */
public class TensorflowModel {


    final int batch_size = SmartWatchValues.batch_size;
    final int steps = SmartWatchValues.time_steps;
    final int num_inputs = SmartWatchValues.num_inputs;
    final float threshold = SmartWatchValues.THRESHOLD_VALUE;
    private TensorFlowInferenceInterface inferenceInterface;
    private Operation operation;
    // numClasses = number of inputs to model = 3 acceleration vectors x,y,z
    private int numClasses;
    private String[] outputNames = SmartWatchValues.output_tensor_names;

    // Constructs model with the path of the file and the application context.
    public TensorflowModel(Context c, String model_file) {
        inferenceInterface = new TensorFlowInferenceInterface(c.getAssets(), model_file);
        operation = inferenceInterface.graphOperation("Output");
        numClasses = (int) operation.output(0).shape().size(1);
    }
    public void close() {
        inferenceInterface.close();
    }

    public static float[] flatten_inputs(Float[][] samples) {
        float flattenedSamples[] = new float[samples.length * samples[0].length];
        for (int i = 0; i < flattenedSamples.length; i += samples[0].length) {
            for (int x = 0; x < samples[0].length; x++) {
                flattenedSamples[i + x] = samples[i / samples[0].length][x];
            }
        }
        return flattenedSamples;
    }


    public float[] predict(Float[][] samples) {
        float[] outputs = new float[numClasses];
        float[] flattendedSamples = flatten_inputs(samples);
        inferenceInterface.feed("Input", flattendedSamples, batch_size, steps, num_inputs);
        inferenceInterface.run(outputNames, false);
        inferenceInterface.fetch("Output", outputs);
//        close();
        return outputs;
    }


}
