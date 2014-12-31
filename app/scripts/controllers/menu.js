'use strict';

/**
 * @ngdoc function
 * @name gr8app2015App.controller:MenuCtrl
 * @description
 * # MenuCtrl
 * Controller of the gr8app2015App
 */
angular.module('gr8conf2015')
  .controller('MenuCtrl', function ($scope, $location, CONFERENCE) {
    $scope.isActive = function(route) {
      console.log('route' + route);
      console.log($location.path());
      if(route === $location.path()) {
        return 'active';
      }
      return '';
    };
  });
