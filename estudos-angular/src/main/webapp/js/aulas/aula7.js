var app = angular.module("app", []);

app.controller('aula07Controller', function($scope){
	
	$scope.nomes = ['edu','Ana','Miguel'];
	
	$scope.pessoas = [];
	
	$scope.pessoas.push(
	    {nome:'edu', idade:38}	
	);
	
	$scope.pessoas.push(
			{nome:'ana', idade:34}	
	);
	
	$scope.pessoas.push(
			{nome:'miguel', idade:0}	
	);
	
	console.log($scope.pessoas);
	
	$scope.adicionaPessoa = function(){
		var nome = document.getElementById("nome");
		var idade = document.getElementById("idade");
		
		$scope.pessoas.push(
		   { nome: nome.value , idade: idade.value}	
		);
		
		nome = "";
		idade = "";
		
	}
	
	
});