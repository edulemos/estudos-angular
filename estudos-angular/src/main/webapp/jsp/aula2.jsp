<%@ include file="/template/header.jsp"%>

<fieldset ng-app>
	<legend>AULA2 - NGAPP</legend>
	<label>STR:</label> <input type="text" ng-model="str" class="form-control"/>
	<div class="alert alert-info">{{str}}</div>
</fieldset>

<script type="text/javascript">
	var app = angular.module("app", []);
</script>

<%@ include file="/template/footer.jsp"%>