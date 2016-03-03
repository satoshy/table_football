'use strict';

angular.module('table_football').
  factory('TournamentResource', ['railsResourceFactory', function (railsResourceFactory) {
	  return railsResourceFactory({
	    url: 'http://localhost:3000/tournaments',
	    name: 'tournament'
	  });
  }]);