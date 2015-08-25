
<div class="btn-group">
	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		CURSO 1 <span class="caret"></span>
	</button>
	<ul class="dropdown-menu">
		<li><a href="${linkTo[IndexController].menu('aula1')}">Aula 1 - Introdução Teórica</a></li>
		<li><a href="${linkTo[IndexController].menu('aula2')}">Aula 2 - NgApp</a></li>
		<li><a href="${linkTo[IndexController].menu('aula3')}">Aula 3 - Javascript</a></li>
		<li><a href="${linkTo[IndexController].menu('aula4')}">Aula 4 - NgBind</a></li>
		<li><a href="${linkTo[IndexController].menu('aula5')}">Aula 5 - Modulos</a></li>
		<li><a href="${linkTo[IndexController].menu('aula6')}">Aula 6 - Controllers</a></li>
		<li><a href="${linkTo[IndexController].menu('aula7')}">Aula 7 - NgRepeat</a></li>
		<li><a href="${linkTo[IndexController].menu('aula8')}">AULA 8 - Formulários</a></li>
		<li><a href="${linkTo[IndexController].menu('aula9')}">AULA 9 - Services e Factory</a></li>	
		<li><a href="${linkTo[IndexController].menu('aula10')}">AULA 10 - Filter</a></li>	
		<li><a href="${linkTo[IndexController].menu('aula11')}">AULA 11 - NgRouter</a></li>	
		<li><a href="${linkTo[IndexController].menu('aula12')}">AULA 12 - Diretivas Basicas</a></li>	
		<li><a href="${linkTo[IndexController].menu('aula13')}">AULA 13 - Diretivas Customizadas</a></li>	
		<li><a href="${linkTo[IndexController].menu('aula14')}">AULA 14 - Requisições Assincronas</a></li>	
		<li role="separator" class="divider"></li>
		<li><a href="#">Separated link</a></li>
	</ul>
</div>
<div class="btn-group">
	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		PROJETO PRÁTICO <span class="caret"></span>
	</button>
	<ul class="dropdown-menu">
		<li><a href="${linkTo[IndexController].menu('listatelefonica')}">Lista Telefonica</a></li>
		<li role="separator" class="divider"></li>
		<li><a href="http://localhost:8080/estudos-angular/crud-html/clientes.html#/lista-clientes">Cadastro Clientes</a></li>
	</ul>
</div>
<div class="btn-group pull-right" role="group" aria-label="...">
	<a href="<c:url value="/console"/>" target="_blank"><button type="button" class="btn btn-default">H2 CONSOLE</button></a>
</div>
