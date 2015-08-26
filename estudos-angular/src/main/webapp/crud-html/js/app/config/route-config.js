app.config(function ($routeProvider, $locationProvider) {
	
	$routeProvider.when("/lista-clientes", {
		templateUrl: "view/cliente-list.html",
		controller: "cadastroClientesCtrlList",
		resolve: {
			clientes: function (clienteService) {
				return clienteService.listarClientes();
			}
		}
	});
	
	$routeProvider.when("/form-cliente", {
		templateUrl: "view/cliente-form.html",
		controller: "cadastroClientesCtrlForm",
			resolve: {
				cliente: function (clienteService) {
					return clienteService.novoCliente();
				},
				estados: function (clienteService) {
					return clienteService.estados();
				}
			}
	});
	
	$routeProvider.when("/form-cliente/:id", {
		templateUrl: "view/cliente-form.html",
		controller: "cadastroClientesCtrlForm",
			resolve: {
				cliente: function (clienteService, $route) {
					return clienteService.getCliente($route.current.params.id);
				},
				estados: function (clienteService) {
					return clienteService.estados();
				}
			}
	});
	

});