app.controller('cadastroClientesCtrlList', cadastroClientesCtrlList);

function cadastroClientesCtrlList($scope, clientes) {
	console.log('Iniciou o cadastroClientesCtrlList');

	$scope.clientes = clientes.data;

		
}
