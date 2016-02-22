'use strict';

var tf = angular.module('table_football', ['ngAnimate', 'ui.router', 'templates', 'Devise']);

tf.config(function ($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', { url: '/', templateUrl: 'home/index.html', controller: 'HomeCtrl' })
    .state('tournaments', { url: 'tournaments', templateUrl: 'tournaments/index.html', controller: 'TourCtrl' })
    .state('auth_login', { url: '/auth/login', templateUrl: 'auth/login.html', controller: 'AuthCtrl' })
    .state('auth_signup', { url: '/auth/signup', templateUrl: 'auth/signup.html', controller: 'AuthCtrl' });

   $urlRouterProvider.otherwise('/');
});