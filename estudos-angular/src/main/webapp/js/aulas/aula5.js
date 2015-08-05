app.filter('ola', function(){
	return function(nome){
		return "Ola " + nome;
	}
});