<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='Aula11Controller'>
	<legend>AULA 11 - NgRouter</legend>

	<base href="/" />

	<ul>
		<li><a href="/">Inicial</a> <a href="Pagina1">Pagina1</a> <a href="Pagina2/1">Pagina2</a></li>
	</ul>

	<p>Cabeçalho</p>
	<div ng-view></div>
	<p>Footer</p>

</fieldset>

<script type="text/javascript" src="<c:url value="/js/aulas/angular-route.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/aulas/angular-route.min.js.map.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula11.js"/>">
	
</script>

<%@ include file="/template/footer.jsp"%>