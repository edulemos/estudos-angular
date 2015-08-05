<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='aula08Controller'>
	<legend>AULA 8 - FORMULÁRIOS</legend>

	<form name="frm" role="form" novalidate="novalidate" ng-submit="salvarPessoa(pessoa)">
		<div class="form-group">
			<label for="nome">Nome:</label> <input type="text" class="form-control" id="nome" ng-model="pessoa.nome" required="required" name="nome">
			<div ng-show="frm.$submitted || frm.nome.$touched">
				<div ng-show="frm.nome.$error.required" >O campo Nome deve ser preenchido.</div>
			</div>
		</div>
		<div class="form-group">
			<label for="email">Email:</label> <input type="email" class="form-control" id="email" ng-model="pessoa.email" required="required" name="email">
			<div ng-show="frm.$submitted || frm.email.$touched">
				<div ng-show="frm.email.$error.required" >O campo Email deve ser preenchido.</div>
				<div ng-show="frm.email.$error.email" >Email Inválido</div>
			</div>
		</div>
		<div class="checkbox">
			<input type="radio" value="m" ng-model="pessoa.sexo" /> Masculino <input type="radio" value="f" ng-model="pessoa.sexo" /> Feminino
		</div>
		<div class="form-group">
			<select ng-model="pessoa.estado">
				<label for="uf">Estados:</label>
				<option ng-repeat="estado in estados" ng-selected="estado==pessoa.estado" value="{{estado}}" id="uf" class="form-control">{{estado}}</option>
			</select>
		</div>

		<button type="submit" class="btn btn-default" ng-disabled="frm.$invalid">Submit</button>
	</form>

	<br>

	<pre>
	   {{ pessoas | json }}
	</pre>

</fieldset>
<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula8.js"/>">
	
</script>

<%@ include file="/template/footer.jsp"%>