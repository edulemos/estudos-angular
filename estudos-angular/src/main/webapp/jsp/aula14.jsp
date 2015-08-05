<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='aula14Controller'>
	<legend>AULA 14 - REQUISIÇÕES ASSINCRONAS</legend>

   <button ng-click="carregadados()">Carregar</button>
   <br>
   <pre>
     {{ pessoas | json }}
   </pre>
     
    	
<script type="text/javascript" src="<c:url value="/js/aulas/aula14.js"/>"> </script>

<%@ include file="/template/footer.jsp"%>