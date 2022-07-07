// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

const pill = document.getElementById("pill");
const body = document.getElementById("bg");
document.addEventListener("DOMContentLoaded", function () {
  getStyles();
});
function themeChange() {
  pill.classList.toggle("active");
  if (pill.classList.contains("active")) {
    body.style.backgroundColor = "black";
    localStorage.setItem("bgColor", "black");
  } else {
    body.style.backgroundColor = "#61ae9c";
    localStorage.setItem("bgColor", "#61ae9c");
  }
}
function getStyles() {
  let currentBgcolor = localStorage.getItem("bgColor") | "#61ae9c";

  document.body.style.backgroundColor = currentBgcolor;
}
