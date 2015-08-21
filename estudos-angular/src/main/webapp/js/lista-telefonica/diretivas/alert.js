app.directive("uialert",function(){
	
	return{
		templateUrl: "../html/alert.html",
		replace:true,
		restrict:"AE",
		scope:{
			title:"@",
			message: "="
		},
		transclude:true
	};
	
});

