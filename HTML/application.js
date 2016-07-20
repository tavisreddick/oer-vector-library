// JavaScript Document

var meStyleSheet = getStyleSheet("me");


// from https://docs.webplatform.org/wiki/manipulating_css_with_javascript
function getStyleSheet(unique_title) {
  for(var i=0; i<document.styleSheets.length; i++) {
    var sheet = document.styleSheets[i];
    if(sheet.title == unique_title) {
      return sheet;
    }
  }
}