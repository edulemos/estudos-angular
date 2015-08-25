app.controller('cadastroClientesCtrlForm', cadastroClientesCtrlForm);

function cadastroClientesCtrlForm($scope, cliente) {
	console.log('Iniciou o cadastroClientesCtrlForm');
	$scope.cliente = cliente.data;
}
