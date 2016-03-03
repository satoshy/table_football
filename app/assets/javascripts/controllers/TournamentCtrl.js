'use strict';

angular.module('table_football')
  .controller('TournamentCtrl', ['$scope', '$location', 'TournamentResource', function($scope, $location, TournamentResource){
  	$scope.tournament = {};

  	$scope.submit = function() {
  	  new TournamentResource($scope.tournament).create();
        $location.path('/home/index');
  	}
  }]);