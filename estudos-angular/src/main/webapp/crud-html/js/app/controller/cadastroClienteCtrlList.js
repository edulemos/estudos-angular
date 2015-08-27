app.controller('cadastroClientesCtrlList', cadastroClientesCtrlList);

function cadastroClientesCtrlList($scope, $location, clienteService, clientes) {
	console.log('Iniciou o cadastroClientesCtrlList');

	$scope.clientes = clientes.data;

	$scope.removerCliente = function(cliente){
		
		console.log("cliente: " + cliente);
		
		clienteService.excluirCliente(cliente).success(function(data) {
			console.log(data)
			
			var index = $scope.clientes.indexOf(cliente);
		    $scope.clientes.splice(index, 1);
		    
		}).error(function(data) {
			console.log("Erro ao excluir cliente: " + data)
		});
		
		
		
	}
}
