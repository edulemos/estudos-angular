<%@ include file="/template/header.jsp"%>


<fieldset ng-controller='listaTelefonicaCtrl'>
<form name="contatoForm">
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

	<label>Nome</label>
	 <input type="text" ng-model="contato.nome" name="nome"	class="form-control" ng-required="true" ng-minlength="10">
	 
	<label>Telefone</label>
	<input type="text" ng-model="contato.telefone" name="telefone" class="form-control" ng-required="true" ng-pattern="/^\d{4,5}-\d{4}$/">

	<label>Operadora</label>
	<select ng-model="contato.operadora" ng-options="operadora.nome for operadora in operadoras" class="form-control" ng-required="true">
		<option value="">selecione uma operadora</option>
	</select>
	
	<br>
    <div class="alert alert-danger" ng-show="contatoForm.$error">
      <p ng-show="contatoForm.nome.$error.required && contatoForm.nome.$dirty ">Por favor, preencha o nome.</p>
      <p ng-show="contatoForm.nome.$error.minlength">O campo nome deve ter 10 caracteres.</p>
      <p ng-show="contatoForm.telefone.required && contatoForm.telefone.$dirty">Por favor, preencha o telefone</p>
      <p ng-show="contatoForm.telefone.$error.pattern">O Campo Telefone Deve ter o Formato (9999-9999)</p>
    </div>
    
	<button class="btn btn-primary" ng-click="adicionarContato(contato)" ng-disabled="contatoForm.$invalid">INCLUIR</button>
    <button class="btn btn-danger" ng-click="apagarContato(contatos)" ng-disabled="isContatoSelecionado(contatos)">APAGAR</button>

	<br> {{contatoForm.$valid}}


</form>
</fieldset>


<script type="text/javascript" src="<c:url value="/js/aulas/listatelefonica.js"/>"></script>

<%@ include file="/template/footer.jsp"%>