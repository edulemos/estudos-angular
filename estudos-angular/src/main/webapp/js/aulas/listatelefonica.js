var app = angular.module("app", []);

function listaTelefonicaCtrl($scope, $http) {
	console.log('Iniciou a listaTelefonicaCtrl');
	
	$scope.contatos = [
	                   {nome:'edu', telefone:"2222-000"},
	                   {nome:'ana', telefone:"3333-000"},
	                   {nome:'pedro', telefone:"4444-000"}
	                   ];
	
	$scope.operadoras = [
	                   
	                   {nome:'Tim', codigo: 14, categoria:"Celular"},
	                   {nome:'Vivo', codigo: 15 , categoria:"Celular"},
	                   {nome:'Oi', codigo: 16 , categoria:"Celular"},
	                   {nome:'Claro', codigo: 17 , categoria:"Celular"},
	                   {nome:'Gvt', codigo: 18 , categoria:"Fixo"},
	                   {nome:'Embratel', codigo: 19 , categoria:"Fixo"}
	                   ];
	
	$scope.isContatoSelecionado = function(contatos){
		return !contatos.some(function(contato){
			return contato.selecionado
		});
	}
	
	$scope.adicionarContato = function(contato){
		$scope.contatos.push(angular.copy(contato));
		delete $scope.contato;
	};
	
	$scope.apagarContato = function(contatos){
		$scope.contatos = contatos.filter(function(contato){
			if( !contato.selecionado ) return contato;
		});
	};
	

}

app.controller('listaTelefonicaCtrl', listaTelefonicaCtrl);
