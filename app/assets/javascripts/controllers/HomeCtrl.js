'use strict';

var app = angular.module('table_football');
    app.controller('HomeCtrl', ['$scope', '$http', function ($scope, $http) {
      $http.get('/tournaments.json')
      .then(function(res){
        $scope.tournaments = res.data;
      });
    }]);