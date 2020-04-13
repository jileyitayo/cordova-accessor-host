cordova.define("cordova-plugin-email.Email", function(require, exports, module) {
    var service = "Email";
    module.exports = {
      initialize: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, service, "initialize", []);
      },
      send: function(successCallback, errorCallback, email) {
        console.log("sending...");
        cordova.exec(successCallback, errorCallback, service, "send", [email]);
      }
    };
});
