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
//= require turbolinks
//= require_tree .
var host = location.protocol.concat("//").concat(window.location.hostname).concat(":").concat(window.location.port);
var app = angular.module('rails_blog', []);
app.controller('blogCtrl', function($scope, $http){
    
    $http.get(host + "/welcome/show").success(function(response){        
        $scope.all_post = response;
    });
    
    $scope.postDetails = function(id){
        window.location = host + "/posts/" + id;
    }
    
    $scope.shortText = function(content){
        var maxLength = 300; // maximum number of characters to extract
        //trim the string to the maximum length
        var trimmedString = content.substr(0, maxLength);
        //re-trim if we are in the middle of a word
        trimmedString = trimmedString.substr(0, Math.min(trimmedString.length, trimmedString.lastIndexOf(" ")));
        return trimmedString + " ... ";
    }
});
