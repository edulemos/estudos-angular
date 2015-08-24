app.config(function ($routeProvider) {
	
	$routeProvider.when("/lista-clientes", {
		templateUrl: "../html/lista-clientes.html",
		controller: "cadastroClientesCtrl"
	});
	
});