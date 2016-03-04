'use strict';

var app = angular.module('table_football');
  app.service('tournamentResource', ['railsResourceFactory', function (railsResourceFactory) {
	  return railsResourceFactory({
	    url: '/tournaments',
	    name: 'tournament'
	  });
  }]);