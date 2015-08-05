app.controller('aula08Controller', function($scope){
	
	$scope.pessoa = novaPessoa();
	
	$scope.estados = ['RJ','SP','MG','ES','BA']; 
	
	$scope.pessoas = [];
	
	$scope.salvarPessoa = function (pessoa){
		$scope.pessoas.push(pessoa);
		$scope.pessoa = novaPessoa();		
	}
	
});

function novaPessoa(){
	return {
		nome: "",
		email: "",
		sexo: "f",
		estado: "SP"
	}
}