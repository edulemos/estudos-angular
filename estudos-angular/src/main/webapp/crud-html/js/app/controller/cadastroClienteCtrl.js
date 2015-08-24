app.controller('cadastroClientesCtrl', cadastroClientesCtrl);

function cadastroClientesCtrl($scope, clienteService) {
	console.log('Iniciou o cadastroClientesCtrl');

	$scope.clientes = [];

	var listarClientes = function() {
		clienteService.listarClientes().success(function(data) {
			$scope.clientes = data;
		});
	}
	
	listarClientes();

}
