<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='aula10Controller'>
	<legend>AULA 10 - Filter</legend>	
	
	{{ 'filtro com uppercase' | uppercase }}
	
	<br>
	<br>
	 
	{{ pessoa | json }}
	
		
	<br>
	<br>
	 
	{{ (pessoa | json) | uppercase }} 
	<br>
	<br>
	 
	{{ pessoa.nome | retornaoi }} 
	 
	
</fieldset>

<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula10.js"/>"> </script>

<%@ include file="/template/footer.jsp"%>