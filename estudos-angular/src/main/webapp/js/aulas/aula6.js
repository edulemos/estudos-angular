var app = angular.module("app", []);

app.controller('aula06Controller', function($scope){
	
	$scope.nome = "Curso Angular - controller";
	
	$scope.olaMundo = function(){
		 alert("Ola mundo")
	};
	
});