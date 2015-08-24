<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='cadastroClientesCtrl'>

	<legend>CADASTRO CLIENTES</legend>
	
	<form name="clienteForm" novalidate>
	
		<label>Nome</label>
		 <input type="text" ng-model="contato.nome" name="nome"	class="form-control" ng-required="true" ng-minlength="3"/>
		 
		<label>Telefone</label>
		<input type="text" ng-model="contato.telefone" name="telefone" class="form-control" ng-required="true" ng-pattern="/^\d{4,5}-\d{4}$/"/>
	
	</form>
	
	<hr>
	
	<input type="text" ng-model="criterioDeBusca" class="form-control" placeholder="Digite o termo para pesquisar"/>
	<br>
	
	<table class="table table-striped">
		<tr>			
			<th>Nome</th>
			<th>Telefone</th>			
		</tr>
		<tr ng-repeat="cliente in clientes">			
			<td>{{cliente.nome}}</td>
			<td>{{cliente.telefone}}</td>			
		</tr>
	</table>

</fieldset>

<script type="text/javascript" src="<c:url value="/js/crud-cliente/app.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/crud-cliente/config/config.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/crud-cliente/config/route-config.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/crud-cliente/controller/cadastroClienteCtrl.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/crud-cliente/services/clienteService.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/angular-route.min.js"/>"></script>

<%@ include file="/template/footer.jsp"%>