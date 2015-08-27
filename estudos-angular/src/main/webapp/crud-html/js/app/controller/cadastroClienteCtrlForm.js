app.controller('cadastroClientesCtrlForm', cadastroClientesCtrlForm);

function cadastroClientesCtrlForm($scope, clienteService, cliente, estados, $location) {
	console.log('Iniciou o cadastroClientesCtrlForm');
	$scope.cliente = cliente.data;
	$scope.estados = estados.data;
	
	$scope.gravaCliente = function(){
		clienteService.adicionarCliente($scope.cliente).success(function(data) {
			$location.path("lista-clientes");
		}).error(function(data) {
			console.log("Erro ao adicionar cliente: " + data)
		});
	}
	
	$scope.onBlur = function($event, cep) {
		if (typeof cep === 'undefined') {
			
		} else {
			clienteService.consultaCep(cep).success(function(data) {
				$scope.cliente.endereco = data;
				document.getElementById("numero").focus();
			}).error(function(data) {
				alert("Cep não localizado");
			});
		}

	};

}
