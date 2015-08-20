app.factory("contatosAPI",function($http, config){
	
	var _getContatos = function(){
		return $http.get(config.baseUrl +  "/getContatos");
	};
	
	var _saveContatos = function(contato){
		return $http.post(config.baseUrl +  "/addContato", contato);
	};
	
	return{
		getContatos: _getContatos,
		saveContato: _saveContatos
	};
	
});

