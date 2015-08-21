var app = angular.module("app", []);

app.factory('Pessoa', function(){
	
	var Pessoa = function (){
		this.nome = 'Jaison';
		this.idade = 32;
		
		this.comprimentar = function(){
			return 'Ola' + this.nome + '!';
		}
		
	}
	
	return Pessoa;
	
});

app.service('operacoes', function(){
	
	console.log('criou o service');
	
	this.somar = function(valor1, valor2){
		return valor1 + valor2;
	} ;
	
	this.subtrair = function(valor1, valor2){
		return valor1 - valor2;
	} ;
	
});

app.controller('aula09Controller', ['$scope', 'operacoes', 'Pessoa',  function($scope, operacoes, Pessoa){
	
	$scope.pessoa =  new Pessoa();
	
	console.log(operacoes.somar(10,10));
	
}]);

