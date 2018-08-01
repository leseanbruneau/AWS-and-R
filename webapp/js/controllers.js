var nameSpace = angular.module("MyRWithAWSDemo", []);

nameSpace.controller("RDataDisplayFunction", function RDataDisplayFunction($scope, testService)  {

    function init() {
      $scope.data = [];
      testService.getData().then(function(data) {
          $scope.rDataResults = data.data;
      });
   }
   
   init();
   
});

nameSpace.service('testService', function ($http) {
  this.getData = function () {
      return $http.get('js/data.json');
  }
});