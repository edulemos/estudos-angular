<%@ include file="/template/header.jsp"%>

<fieldset>
	<legend>AULA 5 - MODULOS</legend>
	
	<div ng-app="appSaudacao">
	  Modulo com filtro:
	   <br><br>
	
	   {{ 'edu' | ola }}
	
	</div>
	
</fieldset>


<%@ include file="/template/footer.jsp"%>

<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula5.js"/>"> </script>