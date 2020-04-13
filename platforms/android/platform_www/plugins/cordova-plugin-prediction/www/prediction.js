cordova.define("cordova-plugin-prediction.prediction", function(require, exports, module) {
var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'prediction', 'coolMethod', [arg0]);
};

});
