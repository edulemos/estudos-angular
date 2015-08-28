app.controller('cadastroClientesCtrl', cadastroClientesCtrl);

function cadastroClientesCtrl($scope, $location, clienteService, cliente,
		clientes, estados, flash) {
	console.log('Iniciou o cadastroClientesCtrl');
	$scope.cliente = cliente.data;
	$scope.clientes = clientes.data;
	$scope.estados = estados.data;
	$scope.flash = flash;
	$scope.message = "Hello World";

	
	$scope.gravaCliente = function() {
				
		 clienteService.adicionarCliente($scope.cliente ).success(function(data) {

			if (typeof $scope.cliente.id === 'undefined') {
				
				flash.setMessage("teste 1");
				
			} else {
				
				flash.setMessage("teste 12");
				
			}

			$location.path("lista-clientes");

		}).error(function(data) {
			
			console.log("Erro ao adicionar cliente: " + data)
			
		});
	}
	
    /*EXCLUI CLIENTE*/
	$scope.removerCliente = function(cliente) {

		clienteService.excluirCliente(cliente).success(function(data) {

			var index = $scope.clientes.indexOf(cliente);
			$scope.clientes.splice(index, 1);
			messageCenterService.add('info', 'Cliente Excluido!');

		}).error(function(data) {
			console.log("Erro ao excluir cliente: " + data)
		});
	}

	/*CONSULTA CEP*/
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
