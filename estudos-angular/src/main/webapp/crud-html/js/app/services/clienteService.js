app.factory("clienteService",function($http, config){
	
	var _listarClientes = function(){
		return $http.get(config.baseUrl + "/listarClientes");
	};
	
	var _getCliente = function (id) {
		return $http.get(config.baseUrl + "/getCliente/" + id);
	};
	
	return{
		listarClientes: _listarClientes,
		getCliente: _getCliente
	}
	
});

