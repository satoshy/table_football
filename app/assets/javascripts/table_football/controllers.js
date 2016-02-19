angular.module('myApp')
    .controller('HomeCtrl', function ($scope, $resource) {
      var rtn = $resource('http://localhost:3000/tournaments');
      $scope.tournaments = rtn.query();
    });