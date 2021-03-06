'use strict';

var app = angular.module('table_football', ['rails', 'ngAnimate', 'ui.router', 'templates', 'Devise']);

app.config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', { url: '/', templateUrl: 'home/index.html', controller: 'HomeCtrl' })
    .state('tournaments', { url: '/tournaments', templateUrl: 'tournaments/index.html', controller: 'TournamentCtrl' })
    .state('tournaments/new', { url: '/tournaments/new', templateUrl: 'tournaments/new.html', controller: 'TournamentCtrl' })
    .state('auth_login', { url: '/auth/login', templateUrl: 'auth/login.html', controller: 'AuthCtrl' })
    .state('auth_signup', { url: '/auth/signup', templateUrl: 'auth/signup.html', controller: 'AuthCtrl' })
    .state('auth_logout', { url: '/auth/logout', templateUrl: '', controller: 'AuthCtrl' });

   $urlRouterProvider.otherwise('/');
}]);