<%@ include file="/template/header.jsp"%>

<fieldset ng-controller='aula12Controller'>
	<legend>AULA 12 - DIRETRIVAS BASICAS</legend>
	
	<h3>NgShow e NgHide</h3>
	
	<div ng-show="mostrar">mostar = true</div>
	<div ng-hide="mostrar">mostar = false</div>
	<div ng-show="!mostrar">mostar = not true</div>
	
	<input type="checkbox" ng-model="mostrar">
	
	<h3>Elemento A</h3>
	
	<a href="">Abrir(previne cliques sem href)</a>
	
	<h3>NgBindHtml</h3>
	
	{{ variavelHtml }}
	
	<p ng-bind-html="variavelHtml" ></p>
	
	<h3>NgClass</h3>
	
	<div ng-class="minhaClass">Texto</div>
	
	<button ng-click="minhaClass='classNg'">Adicionar Classe</button>
	<button ng-click="minhaClass=''">Remover Classe</button>
	
	<h3>NgCloak</h3>
	
	Previne que variaveis do angular sejam exibidas no browser
	<br>
	<div ng-cloak> {{ vCloak }} </div>
	
	
	<h3>NgSrc</h3>
	
	<button ng-click="minhaFoto='img1.jpg'">img1</button>
	<button ng-click="minhaFoto='img2.jpg'">img2</button>
	
	<img alt="foto" ng-src="../img/{{ minhaFoto }}"/>
	
</fieldset>

<script type="text/javascript" src="<c:url value="/js/aulas/aula12.js"/>"> </script>

<%@ include file="/template/footer.jsp"%>