var service = "Wearos";
module.exports = {
  initialize: function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, service, "initialize", []);
  },
  connect: function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, service, "connect", []);
  },
  disconnect: function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, service, "disconnect", []);
  },
  subscribe: function(successCallback, errorCallback, type) {
    cordova.exec(successCallback, errorCallback, service, "subscribe", [type])
  },
  unsubscribe: function(successCallback, errorCallback, type) {
    cordova.exec(successCallback, errorCallback, service, "unsubscribe", [type]);
  },
  isConnected: function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, service, "isConnected", []);
  }
};