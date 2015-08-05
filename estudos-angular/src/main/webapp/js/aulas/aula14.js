var app = angular.module("app", []);

function aula14Controller($scope, $http) {
	console.log('Iniciou o controller 14');

	$scope.pessoas = [];

	$scope.carregadados = function() {

		$http.get("http://localhost:8080/estudos-angular/getPessoas").success(
				function(data) {
					$scope.pessoas = data;
				}).error(function() {
			console.log('não foi possivel carregar os dados');
		})

	}

}

app.controller('aula14Controller', aula14Controller);
