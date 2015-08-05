<%@ include file="/template/header.jsp"%>

<fieldset ng-app ng-init="v1=5; v2=7; pessoa={nome:'edu'}">

	<legend>AULA3 - NBIND E EXPRESSÕES</legend>
	
	<label>v1:</label> <h5 ng-bind="v1"></h5>
	<br>
	<label>v2:</label> <input type="text" ng-model="v2" class="form-control"/>
	<br>
	<label>v1 + v2:</label> {{ v1 + v2 }}
	<br>
	<label>Nome Pessoa:</label> {{ pessoa.nome }}
	
</fieldset>

<%@ include file="/template/footer.jsp"%>