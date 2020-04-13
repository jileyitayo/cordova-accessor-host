cordova.define("cordova-plugin-prediction.Prediction", function(require, exports, module) {
    var service = "Prediction";
    module.exports = {
      initialize: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, service, "initialize", []);
      },
      subscribe: function(successCallback, errorCallback, type) {
        cordova.exec(successCallback, errorCallback, service, "subscribe", [type])
      },
      unsubscribe: function(successCallback, errorCallback, type) {
        cordova.exec(successCallback, errorCallback, service, "unsubscribe", [type]);
      }
    };
});