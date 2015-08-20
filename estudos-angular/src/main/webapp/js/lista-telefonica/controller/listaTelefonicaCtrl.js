app.controller('listaTelefonicaCtrl', listaTelefonicaCtrl);

function listaTelefonicaCtrl($scope, $http) {
	console.log('Iniciou a listaTelefonicaCtrl');

	$scope.contatos = [];

	$scope.operadoras = [];

	$scope.isContatoSelecionado = function(contatos) {
		return !contatos.some(function(contato) {
			return contato.selecionado
		});
	}

	var carregarContatos = function() {
		$http.get("http://localhost:8080/estudos-angular/getContatos").success(
				function(data) {
					$scope.contatos = data;
				});
	}

	var carregarOperadoras = function() {
		$http.get("http://localhost:8080/estudos-angular/getOperadoras")
				.success(function(data) {
					$scope.operadoras = data;
				});
	}

	$scope.adicionarContato = function(contato) {
		$scope.contatos.push(angular.copy(contato));
		$scope.contaForm.setPristine();
		delete $scope.contato;
	};

	$scope.apagarContato = function(contatos) {
		$scope.contatos = contatos.filter(function(contato) {
			if (!contato.selecionado)
				return contato;
		});
	};

	$scope.ordenarPor = function(campo) {
		$scope.criterioDeOrdenacao = campo;
		$scope.direcaoOrdenacao = !$scope.direcaoOrdenacao;
	};

	carregarContatos();
	carregarOperadoras();
}

