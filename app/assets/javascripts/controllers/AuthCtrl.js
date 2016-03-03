'use strict'

angular.module('table_football')
    .controller('AuthCtrl', ['$scope', '$http', function ($scope, $http) {
      $http.get('http://localhost:3000/tournaments.json')
      .then(function(res){
        $scope.tournaments = res.data;
      });
    }]);