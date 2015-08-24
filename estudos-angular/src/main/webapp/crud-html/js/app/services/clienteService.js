app.service("clienteService",function($http, config){
	
	this.listarClientes = function(){
		return $http.get(config.baseUrl + "/listarClientes");
	};
	
});

