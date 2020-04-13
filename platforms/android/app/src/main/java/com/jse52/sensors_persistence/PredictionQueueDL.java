package com.jse52.sensors_persistence;

import android.util.Log;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedDeque;


public class PredictionQueueDL extends Thread {
    static public Queue<ArrayList<String[]>> samplesToBeSaved = new LinkedList<>();
    public static File publicdirectory = new File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOCUMENTS), "SmartWatch Samples/data/log");
    public static File file;
    static public String response = "NO RESPONSE";
    final float threshold = SmartWatchValues.THRESHOLD_VALUE;
    final int hBatchSize = 20;
    private final PredictionQueueDL.StorageConfig config;
    //String baseDir = "";
    //String filePath = baseDir + File.separator + "sample_data.csv";
    private ConcurrentLinkedDeque<String[]> sampleQueue;
    private int samplesAdded;
    private int sampleSize = -1;
    private int numSamples = 0;
    private float sampleTotal = 0.0f;
    //Set this to true if you're collecting new data for a new model instead of predicting
    private boolean collectNewDataMode = true;
    private boolean isFall = false;
    private int fallen = 0;
    private ConcurrentLinkedDeque<Float> pastHeuristics = new ConcurrentLinkedDeque<Float>();
    private int numOfHeuristics = 0;
    private Queue<ArrayList<String[]>> sampleArrayQueue = new LinkedList<ArrayList<String[]>>(); //A queue of arrays of samples awaiting labels.
    //private FileWriter file;
    private PrintWriter saveFile;
    private int sampleCount = -1;
    private Long startTime;
    private int samplesPerMinute = 5000;
    private int fileDurationMinutes = 1;
    private int fileSize = samplesPerMinute * fileDurationMinutes + ((samplesPerMinute * fileDurationMinutes) % 35);
    private long fallTimeStamp = 0L;

    public PredictionQueueDL(PredictionQueueDL.StorageConfig config) {
        this.sampleQueue = new ConcurrentLinkedDeque<>(); //
        this.samplesAdded = 0;
        this.config = config;
        this.startTime = System.currentTimeMillis();
        //couchBaseHelper.start();
    }

    public int getFall(){
        return fallen;
    }
    
    public long getFallTimeStamp(){
        return fallTimeStamp;
    }

    public void enqueueSample(String[] newSample, Long timestamp) {
         /*
        The sampleQueue object is a queue of size "config.maxQueueSize". each item in the queue is
        a sample array. These sample arrays are what is passed into this method.
        A prediction is made once the sampleQueue is filled. At this point, the next sample received
        will be pushed into the queue and the first sample received pushed out (FIFO).
        New predictions are made at the rate of "config.frequency". For example, this is set to one,
        a new prediction is made every time a new sample is received.
        Because we use "hBatchSize" number of predictions, we need to store the heuristic of
        each prediction made as well as the sample arrays that were used.
        This is where the pastHeuristics and sampleArrayQueue are needed. They both are queues of
        size "hBatchSize". To be clear, sampleArrayQueue contains  sampleQueue objects. These
        sampleQueue objects are made every time a prediction is made.
         */

        //the first thing we need to do is attach the timestamp to the sample.
        String[] addTimestamp = new String[newSample.length + 1];
        int z = 0;
        while (z < newSample.length){
            addTimestamp[z] = newSample[z];
            z++;
        }
        addTimestamp[z] = Long.toString(timestamp);
        newSample = addTimestamp;

        //if we have a valid sample, we move forward.
        if (!newSample[0].equals(null)) {
            if (this.sampleSize == -1) this.sampleSize = newSample.length;
            samplesAdded++;
            while (this.sampleQueue.size() >= this.config.maxQueueSize) { //Keep the queue just under the max.
                this.sampleQueue.poll();
            }
            this.sampleQueue.offer(newSample.clone());
            sampleCount++;
            StringBuilder samplesString = new StringBuilder();
            for (int b = 0; b < 3; b++) {
                samplesString.append(newSample[b] + ",");
            }
            samplesString.append(Long.toString(timestamp) + "\n");


            //wait for the queue to fill.
            if (this.sampleQueue.size() >= this.config.maxQueueSize) {
                if (samplesAdded >= this.config.frequency) {
                    //timestamp -= startTime;

                    //reset counter
                    samplesAdded = 0;
                    //We want an arraylist of samples.
                    // Separate the samples.
                    ConcurrentLinkedDeque<String[]> tempQueue = new ConcurrentLinkedDeque<>(this.sampleQueue);
                    //create a sample array from the queue
                    final ArrayList<String[]> sampleArray = new ArrayList<String[]>();
                    for (int i = 0; i < this.config.maxQueueSize; ++i)
                        sampleArray.add(tempQueue.poll());

                    //We need just the accelerometer data for fall detection. This will be the "trimmedSamples"
                    Float[][] trimmedSamples = new Float[sampleArray.size()][3];
                    for (int i = 0; i < sampleArray.size(); i++) {
                        String[] currentSample = sampleArray.get(i);
                        if (currentSample[0] == null) {
                            trimmedSamples[i][0] = 0F;
                        } else {
                            trimmedSamples[i][0] = Float.parseFloat(currentSample[0]);
                        }
                        if (currentSample[1] == null) {
                            trimmedSamples[i][1] = 0F;
                        } else {
                            trimmedSamples[i][1] = Float.parseFloat(currentSample[1]);
                        }
                        if (currentSample[2] == null) {
                            trimmedSamples[i][2] = 0F;
                        } else {
                            trimmedSamples[i][2] = Float.parseFloat(currentSample[2]);
                        }


                    }
                    //
                    predictionDL fall_prediction = new predictionDL();
                    float currentHeuristic = 0;


                    //here
                    try {
                        long duration;
                        synchronized (this) { // I had to include this because I am working with threads for cordova (
                            // some unexpected issues occurred due to lack of synchronized threads
//                            wait();
//                            long startTime = System.nanoTime();
                            currentHeuristic = fall_prediction.predict(trimmedSamples); //Start gathering predictions on the data.
//                            long endTime = System.nanoTime();
//                             duration = (endTime - startTime) / 1000000;  //divide by 1000000 to get milliseconds.
//                            notifyAll();
                        }
//                        Log.d("CURRENT", Float.toString(duration));

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    numOfHeuristics++;
                    //save the Array of samples to be labeled and stored later.
                    sampleArrayQueue.add(sampleArray);
                    //save the heuristic
                    pastHeuristics.push(currentHeuristic);


                    Float tempHeuristics[] = new Float[pastHeuristics.size()];
                    tempHeuristics = pastHeuristics.toArray(tempHeuristics);

                    currentHeuristic = 0; //current heuristic is already stored in tempHeuristics. reset.

                    //make currentHeuristic the average of all the past Heuristics
                    for (float p : tempHeuristics) {
                        currentHeuristic = currentHeuristic + p;
                    }
                    currentHeuristic = currentHeuristic / numOfHeuristics;

                    if(currentHeuristic >= 0.3f)
                    {
                        Log.d("CURRENT", " Current Heuristics : " + Float.toString(currentHeuristic));
                        Log.d("CURRENT", " Threshold : " + Float.toString(threshold));
                        Log.d("CURRENT", " Number of Heuristics : " + Integer.toString(numOfHeuristics));
                        Log.d("CURRENT", " Batch Size : " + Integer.toString(hBatchSize));
                        Log.d("CURRENT", " pastHeuristics  Size : " + Integer.toString(pastHeuristics.size()));
                    }


                    if (currentHeuristic > threshold && numOfHeuristics >= hBatchSize) {
                        //this is a fall. Let's trigger a fall event.
                        isFall = true;
                        sampleQueue.clear();
                        sampleArrayQueue.clear();
                        pastHeuristics.clear();
                        numOfHeuristics = 0;
                        currentHeuristic = 0;

                    }
                    //not a fall, let us see if we want to save the oldest sample Array in the queue anyways.
                    else if (currentHeuristic <= threshold && numOfHeuristics >= hBatchSize && !sampleArrayQueue.isEmpty()) {

                        if (collectNewDataMode) {


                            while (numOfHeuristics >= hBatchSize) {
                                ArrayList<String[]> temp = sampleArrayQueue.poll();
                                numOfHeuristics--;
                                pastHeuristics.removeLast();
                            }


                        }
                    }
                    else {
                        while (numOfHeuristics > hBatchSize) {
                            sampleArrayQueue.poll();
                            pastHeuristics.removeLast();
                            numOfHeuristics--;
                        }
                    }
                }



                    if (isFall) { //TODO pass fall data into intent dialog to be saved once labeled.
                        isFall = false;
                        fallen = 1;
//                        Log.d("ACCELEROMETER", "MESSAGES: " + newSample[0] + ", " + newSample[1] + ", " + newSample[2] + ", " + timestamp);
                        Log.d("CURRENT", "MESSAGES: FALL DETECTED!");
//                        Log.d("CURRENT", "MESSAGES: " + newSample[0] + ", " + newSample[1] + ", " + newSample[2] + ", " + timestamp);

                    }





                }
            }
        }

    public static class StorageConfig {
        /*        */
        /**
         * Enumerates the possible interpretations of the trigger value.
         *//*
        public enum TriggerType {
            FREQUENCY, MAXQUEUESIZE
        }*/

        private final int frequency;
        private final int maxQueueSize;

        /**
         * Constructs a StorageConfig object for use by a SampleQueue.
         *
         * @param frequency Amount of samples to to queue before sending out a new queue. If set to 1, the queue will be processed every time a new sample has occurred.
         */
        public StorageConfig(int frequency, int maxQueueSize) {

            this.frequency = frequency;
            this.maxQueueSize = maxQueueSize;
        }

        /**
         * @return The set frequency value.
         */
        public int getfrequency() {
            return this.frequency;
        }

        /**
         * @return The set maxQueueSize value.
         */
        public int getmaxQeueSize() {
            return this.maxQueueSize;
        }
    }

}