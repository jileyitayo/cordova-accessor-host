// Cordova host swarmlet test
//
// Copyright (c) 2016-2017 The Regents of the University of California.
// All rights reserved.
//
// Permission is hereby granted, without written agreement and without
// license or royalty fees, to use, copy, modify, and distribute this
// software and its documentation for any purpose, provided that the above
// copyright notice and the following two paragraphs appear in all copies
// of this software.
//
// IN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY
// FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES
// ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF
// THE UNIVERSITY OF CALIFORNIA HAS BEEN ADVISED OF THE POSSIBILITY OF
// SUCH DAMAGE.
//
// THE UNIVERSITY OF CALIFORNIA SPECIFICALLY DISCLAIMS ANY WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE SOFTWARE
// PROVIDED HEREUNDER IS ON AN "AS IS" BASIS, AND THE UNIVERSITY OF
// CALIFORNIA HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES,
// ENHANCEMENTS, OR MODIFICATIONS.
//

/** This "swarmlet" example, running on Cordova, illustrates the use of Cordova
 *  Host to run a swarmlet. The swarmlet loads loads a 'TestSpontaneousOnce' and 
 *  a 'Hello' accessors, initializes them, and connect them
 *  
 *  See https://www.icyphy.org/accessors/wiki/Main/CordovaHost2
 *  
 *  @module swarmlet.js
 *  @author Victor Nouvellet
 *  @version $$Id: swarmlet.js 1502 2017-04-17 21:34:03Z cxh $$
 */

exports.setup = function() {
    document.getElementById("display").innerHTML = "Getting Data. Loading...";

    var input_div = document.getElementById("get_inputs");
    input_div.innerHTML += "<input type='text' id='recipient_name' placeholder='Enter Name of Patient' value = 'Samuel Eyitayo' />";
    input_div.innerHTML += "<input type='email' id='recipient_email' placeholder='Enter Email of Patient' value = 'jileyitayo@gmail.com' />";

//    if(recipient_name == '' && recipient_email == '')
//    {
//
//    }

    /*
     * HEART RATE MONITORING APPLICATION
     */
    var dataCollection = this.instantiate('dataCollection', 'dataCollectingAccessor');
    var dataProcessing = this.instantiate('dataProcessing', 'heartrate/heartRateProcessorAccessor');
    var dataDisplay = this.instantiate('dataDisplay', 'heartrate/heartRateDataDisplayAccessor');
//    var dataAlert = this.instantiate('dataAlert', 'alertAccessor');

    // the inputs and outputs of the accessors are defined
    this.connect(dataCollection, 'dataOut', dataProcessing, 'dataIn');
    this.connect(dataCollection, 'dataOut', dataDisplay, 'dataIn');
//    this.connect(dataProcessing, 'status', dataAlert, 'status');
    this.connect(dataProcessing, 'status', dataDisplay, 'status');


    /*
     * FALL DETECTION APPLICATION - comment heart rate section and
     * uncomment for fall detection
     */
//    var dataCollection = this.instantiate('dataCollection', 'dataCollectingAccessor');
//    var dataProcessing = this.instantiate('dataProcessing', 'falldetection/dataPredictionAccessor');
//    var dataDisplay = this.instantiate('dataDisplay', 'falldetection/fallDetectionDataDisplayAccessor');
////    var alert = this.instantiate('alert', 'alertAccessor');
//
//     the inputs and outputs of the accessors are defined
//    this.connect(dataCollection, 'dataOut', dataDisplay, 'dataIn');
//    this.connect(dataCollection, 'dataOut', dataProcessing, 'dataIn');
//    this.connect(dataProcessing, 'status', dataDisplay, 'status');
////    this.connect(dataProcessing, 'status', alert, 'status');


};

exports.initialize = function () {

//    var alert = this.instantiate('dataAlert', 'alertAccessor');
};
