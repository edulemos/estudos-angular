var app = angular.module("app", [ 'ngSanitize' ]);

function aula12Controller($scope, $filter) {
	
	console.log('Iniciou o controller 12');
	
	$scope.mostrar = true;
	
	$scope.variavelHtml = "<h3>conteudo html</h3>";
	
	$scope.minhaClass = "";
	
	$scope.minhaFoto = "img2.jpg";
	
	$scope.vCloak = "aaabbbaaababbababal";
	
	
}

app.controller('aula12Controller', aula12Controller);
