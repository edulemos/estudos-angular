<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='listaTelefonicaCtrl'>
	<legend>Lista Telefonica</legend>
	<table class="table table-striped" ng-show="contatos.length > 0">
		<tr>
			<th></th>
			<th>Nome</th>
			<th>Telefone</th>
			<th>Operadora</th>
		</tr>
		<tr ng-class="{selecionado: contato.selecionado}"
			ng-repeat="contato in contatos">
			<td><input type="checkbox" ng-model="contato.selecionado" /></td>
			<td>{{contato.nome}}</td>
			<td>{{contato.telefone}}</td>
			<td>{{contato.operadora.nome}}</td>
		</tr>
	</table>

	<hr>

	<label>Nome</label> <input type="text" ng-model="contato.nome"
		class="form-control"> <label>Telefone</label> <input
		type="text" ng-model="contato.telefone" class="form-control">

	<label>Operadora</label> <select ng-model="contato.operadora"
		ng-options="operadora.nome for operadora in operadoras"
		class="form-control">
		<option value="">selecione uma operadora</option>
	</select> <br>

	<button class="btn btn-primary" ng-click="adicionarContato(contato)" ng-disabled="!contato.nome || !contato.telefone">INCLUIR</button>
    <button class="btn btn-danger" ng-click="apagarContato(contatos)" ng-disabled="isContatoSelecionado(contatos)">APAGAR</button>

	<br> {{contato}}


</fieldset>

<script type="text/javascript" src="<c:url value="/js/aulas/listatelefonica.js"/>"></script>

<%@ include file="/template/footer.jsp"%>