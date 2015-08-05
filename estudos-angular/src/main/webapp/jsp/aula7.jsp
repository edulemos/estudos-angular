<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='aula07Controller'>
	<legend>AULA 7 - NG REPEAT</legend>
	
	ADICIONAR PESSOA
	
	<br>
	
	<label>nome</label><input type="text" id="nome" class="form-control">
	<label>Idade</label><input type="text" id="idade" class="form-control">
	<br>
	<button class="form-control" ng-click="adicionaPessoa()">Adicionar</button>
		
	<ul>
	  <li ng-repeat="p in pessoas">{{p.nome}}-{{p.idade}}</li>
	</ul>
	
</fieldset>
<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula7.js"/>"> </script>

<%@ include file="/template/footer.jsp"%>