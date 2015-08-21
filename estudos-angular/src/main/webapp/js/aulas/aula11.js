var app = angular.module("app", []);

angular.modules('app',['ngRoute']).controller('Aula11Controller', function( $scope, $route, $routeParams, $location){
	
	 $scope.$route = $route;
	 $scope.$routeParams = $routeParams;
	 $scope.$location = $location;
	
})
