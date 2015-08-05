<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='aula09Controller'>
	<legend>AULA 9 - SERVICES E FACTOTY</legend>	
	
	{{ pessoa.nome }} -
	{{ pessoa.idade }} 
	
</fieldset>

<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula9.js"/>"> </script>

<%@ include file="/template/footer.jsp"%>