'use strict';

var app = angular.module('table_football')
  app.controller('TournamentCtrl', ['$scope', '$location', 'tournamentResource', function($scope, $location, tournamentResource){
  	$scope.tournament = {};

  	$scope.submit = function() {
  	  new tournamentResource($scope.tournament).create();
        $location.path('/home/index');
  	}
  }]);