'use strict';

/**
 * @ngdoc function
 * @name gr8app2016App.controller:VenueCtrl
 * @description
 * # VenueCtrl
 * Controller of the gr8app2016App
 */
angular.module('gr8conf2016')
  .controller('VenueCtrl', function ($scope) {
      $scope.removeOverlay = function ($scope, $element) {
        $($element).css('pointer-events','')

    };
  });
