var exec = require('cordova/exec');

var TextScale = {
    getTextScale: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, "TextScale", "getTextScale", []);
    }
};

module.exports = TextScale;