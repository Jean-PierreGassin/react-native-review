'use strict';

var RNReview = require('react-native').NativeModules.RNReview;
// var IsAndroid = RNReview.IsAndroid;

function Review() {}

Review.prototype.requestReview = function() {
  RNReview.requestReview();
}

// if (!IsAndroid) {
//   Review.enable(true);
// }

Review.MAIN_BUNDLE = RNReview.MainBundlePath;
Review.DOCUMENT = RNReview.NSDocumentDirectory;
Review.LIBRARY = RNReview.NSLibraryDirectory;
Review.CACHES = RNReview.NSCachesDirectory;

module.exports = Review;
