var exec = require('cordova/exec');

var TextScalePlugin = {
    getTextScale: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, 'TextScalePlugin', 'getTextScale', []);
    }
};

module.exports = TextScalePlugin;
