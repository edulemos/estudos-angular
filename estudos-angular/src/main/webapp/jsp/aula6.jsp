<%@ include file="/template/header.jsp"%>

<fieldset ng-controller="aula06Controller">
	<legend>AULA 6 - CONTROLES</legend>
	
	  {{ nome }}
	  
	  <br>
	  
	  <input type="button"  value="clikme" ng-click="olaMundo()">
	
</fieldset>
<script type="text/javascript" src="<c:url value="/js/aulas/app.module.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/aulas/aula6.js"/>"> </script>

<%@ include file="/template/footer.jsp"%>