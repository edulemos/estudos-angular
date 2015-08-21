var app = angular.module("app", []);

app.controller('aula10Controller', aula10Controller);

//nome filtro tem que concatenar com Filter ou $filter

//function aula10Controller($scope, retornaoiFilter) {
function aula10Controller($scope, $filter) {
	console.log('Iniciou o controller 10')
	
//	console.log(retornaoiFilter('ana'));
	
	console.log($filter('retornaoi')('Edu Lemos'));

	$scope.pessoa = {
		nome : 'edu',
		idade : 20
	}

}

app.filter('retornaoi', function() {
	return function(nome) {		
		return 'Oi ' + nome;
	}
});
