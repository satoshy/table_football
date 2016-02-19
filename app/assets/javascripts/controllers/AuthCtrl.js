angular.module('table_football')
    .controller('HomeCtrl', function ($scope, $http) {
      $http.get('http://localhost:3000/tournaments.json')
      .then(function(res){
        $scope.tournaments = res.data;
      });
    });