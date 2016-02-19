'use strict';

var tf = angular.module('table_football', ['ngAnimate', 'ui.router', 'templates']);

tf.config(function ($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/');
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'home.html',
      controller: 'HomeCtrl'
    });
});