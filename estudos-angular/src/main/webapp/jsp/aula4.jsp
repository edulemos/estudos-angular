<%@ include file="/template/header.jsp"%>

<fieldset ng-init="v1=5; v2=7; pessoa={nome:'edu'}">

	<legend>AULA4 - NBIND E EXPRESSÕES</legend>
	
	<label>v1:</label> <h5 ng-bind="v1"></h5>
	<br>
	<label>v2:</label> <input type="text" ng-model="v2" class="form-control"/>
	<br>
	<label>v1 + v2:</label> {{ v1 + v2 }}
	<br>
	<label>Nome Pessoa:</label> {{ pessoa.nome }}
	
</fieldset>

<script type="text/javascript">
	var app = angular.module("app", []);
</script>

<%@ include file="/template/footer.jsp"%>