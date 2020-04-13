cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-msband.MSBand",
    "file": "plugins/cordova-plugin-msband/www/msband.js",
    "pluginId": "cordova-plugin-msband",
    "clobbers": [
      "msband"
    ]
  },
  {
    "id": "cordova-plugin-wearos.Wearos",
    "file": "plugins/cordova-plugin-wearos/www/wearos.js",
    "pluginId": "cordova-plugin-wearos",
    "clobbers": [
      "wearos"
    ]
  },
  {
    "id": "cordova-plugin-prediction.Prediction",
    "file": "plugins/cordova-plugin-prediction/www/prediction.js",
    "pluginId": "cordova-plugin-prediction",
    "clobbers": [
      "prediction"
    ]
  },
  {
    "id": "cordova-sms-plugin.Sms",
    "file": "plugins/cordova-sms-plugin/www/sms.js",
    "pluginId": "cordova-sms-plugin",
    "clobbers": [
      "window.sms"
    ]
  },
  {
    "id": "cordova-plugin-email.Email",
    "file": "plugins/cordova-plugin-email/www/email.js",
    "pluginId": "cordova-plugin-email",
    "clobbers": [
      "window.email"
    ]
  }
];
module.exports.metadata =
// TOP OF METADATA
{
  "cordova-plugin-whitelist": "1.3.4",
  "cordova-plugin-msband": "0.0.3",
  "cordova-plugin-wearos": "0.0.1",
  "cordova-plugin-prediction": "0.0.1",
  "cordova-sms-plugin": "1.0.0",
  "cordova-plugin-email": "0.0.1"
};
// BOTTOM OF METADATA
});