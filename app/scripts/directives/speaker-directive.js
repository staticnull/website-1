'use strict';

/**
 * @ngdoc directive
 * @name gr8app2016App.directive:speaker
 * @description
 * # speaker
 */
angular.module('gr8conf2016')
  .directive('speaker', function () {
    return {
      restrict: "E",
      replace: false,
      templateUrl: 'views/templates/speaker-template.html',
      scope: {
        speaker: '=',
        detailed: '='
      }
    };
  });
angular.module('gr8conf2016')
  .directive('speakerCarousel', function () {
    return {
      restrict: "E",
      replace: false,
      templateUrl: 'views/templates/speaker-carousel-template.html',
      scope: {
        speaker: '='
      }
    };
  });
