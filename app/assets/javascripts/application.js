// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require materialize-sprockets

// if correct flash one thing
// elsif incorrect flash a different thing
//
var toast = function(){ Materialize.toast('Correct! Play again', 4000) }
var correct = function(){ Materialize.toast('Correct! Play again', 4000) }
var wrong = function(){ Materialize.toast('Wrong! Play again', 4000) }

var rightorwrong = function(button){
  var content = document.getElementById('content');
  if (button.id === content.className) {
    correct();
  } else {
    wrong();
  };
};
