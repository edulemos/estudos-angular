var app = angular.module("app", []);

function listaTelefonicaCtrl($scope, $http) {
	console.log('Iniciou a listaTelefonicaCtrl');
	
	$scope.contatos = [
	                   {nome:'edu', telefone:"2222-000", data: new Date(), operadora:{nome:"Oi", codigo:14, categoria:'Celular'}},
	                   {nome:'ana', telefone:"3333-000", data: new Date(), operadora:{nome:"Vivo", codigo:15, categoria:'Celular'}},
	                   {nome:'pedro', telefone:"4444-000", data: new Date(), operadora:{nome:"Tim", codigo:14, categoria:'Celular'}}
	                   ];
	
	$scope.operadoras = [
	                   
	                   {nome:'Tim', codigo: 14, categoria:"Celular", preco: 1},
	                   {nome:'Vivo', codigo: 15 , categoria:"Celular", preco: 2},
	                   {nome:'Oi', codigo: 16 , categoria:"Celular", preco: 3},
	                   {nome:'Claro', codigo: 17 , categoria:"Celular", preco: 4},
	                   {nome:'Gvt', codigo: 18 , categoria:"Fixo", preco: 5},
	                   {nome:'Embratel', codigo: 19 , categoria:"Fixo", preco: 6}
	                   ];
	
	$scope.isContatoSelecionado = function(contatos){
		return !contatos.some(function(contato){
			return contato.selecionado
		});
	}
		
	$scope.adicionarContato = function(contato){
		$scope.contatos.push(angular.copy(contato));
		$scope.contaForm.setPristine();
		delete $scope.contato;
	};
	
	$scope.apagarContato = function(contatos){
		$scope.contatos = contatos.filter(function(contato){
			if( !contato.selecionado ) return contato;
		});
	};
	
	$scope.ordenarPor = function(campo){
		$scope.criterioDeOrdenacao = campo;		
		$scope.direcaoOrdenacao = !$scope.direcaoOrdenacao;		
	};
	

}

app.controller('listaTelefonicaCtrl', listaTelefonicaCtrl);
