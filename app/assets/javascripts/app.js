'use strict';

var tf = angular.module('table_football', ['ngAnimate', 'ui.router', 'templates']);

tf.config(function ($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'home/index.html',
      controller: 'HomeCtrl'
    })

   .state('tournaments', {
   	 url: 'tournaments',
   	 templateUrl: 'tournaments/index.html',
   	 controller: 'TourCtrl'
   });

   $urlRouterProvider.otherwise('/');
});