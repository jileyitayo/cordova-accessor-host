// Alert Accessor

var email = "EMAIL"; // if you choose to  send through email
var sms = "SMS"; // if you choose to  send through sms
var previous_status;
var message_type = sms;
var recipient_name = document.getElementById("recipient_name").value;
var recipient_email = document.getElementById("recipient_email").value;


exports.setup = function() {

//    this.input('status');


if(message_type === "EMAIL")
{
  var data = {
        "email_configuration":
        {
            "recipient_name":  recipient_name,
            "recipient_email_address": recipient_email
        }
    };


    if(recipient_name == "" || recipient_email == "")
    {
       console.log("not sent...");
    } else {
         window.email.send(function(result){}, function() {alert("not able to send");}, data);
         console.log("sent...");
    }
}

    var number = "+15122106632";
    var message = "You have been alerted";

    //CONFIGURATION
    var options = {
        replaceLineBreaks: false, // true to replace \n by a new line, false by default
        android: {
//            intent: 'INTENT'  // send SMS with the native android SMS messaging
            intent: '' // send SMS without opening any other app
        }
    };

    // if there is a fall; display the option buttons
//    if(status == 1)
//    {
        // send sms
        var success = function () { alert('Message sent successfully'); };
        var error = function (e) { alert('Message Failed:' + e); };
        window.sms.send(number, message, options, success, error);
        console.log("sent");
//    }




};

exports.initialize = function() {




//    this.addInputHandler("status", alert.bind(this));

};
function alert () {

//    var status = this.get('status');
    var status = 0;
    if( status == 1 )
    {
        previous_status = status;
    }
    if(previous_status == 0 && status == 1)
    {
        if(message_type === "SMS")
        {
            var number = "+15122106632";
                var message = "You have been alerted";

                //CONFIGURATION
                var options = {
                    replaceLineBreaks: false, // true to replace \n by a new line, false by default
                    android: {
                        intent: 'INTENT'  // send SMS with the native android SMS messaging
                        //intent: '' // send SMS without opening any other app
                    }
                };

                // if there is a fall; display the option buttons
                if(status == 1)
                {
                    // send sms
                    var success = function () { alert('Message sent successfully'); };
                    var error = function (e) { alert('Message Failed:' + e); };
                    sms.send(number, message, options, success, error);
                }
        }
        else if (message_type === "EMAIL")
        {

            var data = {
                "email_configuration":
                {
                    "recipient_name": "jileyitayo",
                    "recipient_email_address": "jileyitayo@gmail.com"
                }
            };
            email.send(function(result){ fn(result);}, function() {alert("not able to send");}, data);
        }
    }



}