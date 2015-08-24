<%@ include file="/template/header.jsp"%>



<fieldset ng-controller='listaTelefonicaCtrl' >
<form name="contatoForm" novalidate="novalidate">
	<legend>Lista Telefonica</legend>
	<uialert title="Ops Aconteceu um erro" >
	    {{error}}
	</uialert>
	<input type="text" ng-model="criterioDeBusca" class="form-control" placeholder="Digite o termo para pesquisar"/>
	<br>
	<table class="table table-striped" ng-show="contatos.length > 0">
		<tr>
			<th></th>
			<th>Id</th>
			<th><a href="" ng-click="ordenarPor('nome')"> Nome </a></th>
			<th><a href="" ng-click="ordenarPor('telefone')">Telefone</a></th>
			<th><a href="" ng-click="ordenarPor('operadora')">Operadora</a></th>
			<th>Data</th>
		</tr>
		<tr ng-repeat="contato in contatos | limitTo:20 | filter:criterioDeBusca | orderBy:criterioDeOrdenacao:direcaoOrdenacao">
			<td><input type="checkbox" ng-model="contato.selecionado" /></td>
			<td>{{contato.id }}</td>
			<td>{{contato.nome | name | elipses:15 }}</td>
			<td>{{contato.telefone}}</td>
			<td>{{contato.operadora.nome | lowercase}}</td>
			<td>{{contato.data | date:'dd/MM/yyyy' }}</td>
		</tr>
	</table>

	<hr>

	<label>Nome</label>
	 <input type="text" ng-model="contato.nome" name="nome"	class="form-control" ng-required="true" ng-minlength="3"/>
	 
	<label>Telefone</label>
	<input type="text" ng-model="contato.telefone" name="telefone" class="form-control" ng-required="true" ng-pattern="/^\d{4,5}-\d{4}$/"/>
	
	<label>Data</label>
	<input type="date" ng-model="contato.data" name="data" class="form-control"  ui-date />

	<label>Operadora</label>
	<select ng-model="contato.operadora" ng-options="operadora.nome + ' - ' + (operadora.preco | currency) for operadora in operadoras | orderBy:'nome'" class="form-control" ng-required="true">
		<option value="">selecione uma operadora</option>
	</select>
	
	<br>
      <p class="alert alert-danger" ng-show="contatoForm.nome.$error.required && contatoForm.nome.$dirty ">Por favor, preencha o nome.</p>
      <p class="alert alert-danger" ng-show="contatoForm.nome.$error.minlength">O campo nome deve ter 10 caracteres.</p>
      <p class="alert alert-danger" ng-show="contatoForm.telefone.required && contatoForm.telefone.$dirty">Por favor, preencha o telefone</p>
      <p class="alert alert-danger" ng-show="contatoForm.telefone.$error.pattern">O Campo Telefone Deve ter o Formato (9999-9999)</p>
    
	<button class="btn btn-primary" ng-click="adicionarContato(contato)" ng-disabled="contatoForm.$invalid">INCLUIR</button>
    <button class="btn btn-danger" ng-click="apagarContato(contatos)" ng-disabled="isContatoSelecionado(contatos)">APAGAR</button>

	<br> 

</form>
</fieldset>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/app.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/controller/listaTelefonicaCtrl.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/services/contatoApiService.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/services/operadorasApiService.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/config.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/filters/name.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/filters/elipses.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/diretivas/alert.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/lista-telefonica/diretivas/uidate.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/angular-route.min.js"/>"></script>


<%@ include file="/template/footer.jsp"%>