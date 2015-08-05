var app = angular.module("app",[]);

function aula13Controller($scope) {

	console.log('Iniciou o controller 13');

}

app.controller('aula13Controller', aula13Controller);


app.directive('ngOla',function(){	
	return{
		  restrict: 'AEC',
		  template: '<h1>ola</h1>'
	}
	
});