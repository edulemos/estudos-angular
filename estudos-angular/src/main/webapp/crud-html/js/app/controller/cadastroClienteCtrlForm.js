app.controller('cadastroClientesCtrlForm', cadastroClientesCtrlForm);

function cadastroClientesCtrlForm($scope, clienteService, cliente, estados) {
	console.log('Iniciou o cadastroClientesCtrlForm');
	$scope.cliente = cliente.data;
	$scope.estados = estados.data;

	$scope.onBlur = function($event, cep) {

		console.log(cep);

		if (typeof cep === 'undefined') {
			
		} else {
			
			clienteService.consultaCep(cep).success(function(data) {
				console.log("Data: " + data);
				$scope.cliente.endereco = data;
				document.getElementById("numero").focus();
			}).error(function(data) {
				alert("Cep não localizado");
			});

		}

	};

}
