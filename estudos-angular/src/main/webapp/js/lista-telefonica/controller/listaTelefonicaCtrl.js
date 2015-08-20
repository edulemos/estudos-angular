app.controller('listaTelefonicaCtrl', listaTelefonicaCtrl);

function listaTelefonicaCtrl($scope, contatosAPI, operadorasAPI) {
	console.log('Iniciou a listaTelefonicaCtrl');

	$scope.contatos = [];

	$scope.operadoras = [];

	$scope.isContatoSelecionado = function(contatos) {
		return !contatos.some(function(contato) {
			return contato.selecionado
		});
	}

	var carregarContatos = function() {
		contatosAPI.getContatos().success(
				function(data) {
					$scope.contatos = data;
				});
	}

	var carregarOperadoras = function() {
		operadorasAPI.getOperadoras()
				.success(function(data) {
					$scope.operadoras = data;
				});
	}

	$scope.adicionarContato = function(contato) {
		contatosAPI.saveContato(contato)
				.success(function(data) {
					$scope.msg =  data;
					delete $scope.contato;
					$scope.contatoForm.$setPristine();
					carregarContatos();
				}).error(function(data) {
					$scope.msg =  'erro ao adicionar contato:' + data;
				});
		
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

