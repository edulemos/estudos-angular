<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br" ng-app="app">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Angular</title>

<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" media="screen" />
<link href="<c:url value="/css/styles.css"/>" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="<c:url value="/js/angular.min.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/js/angular-sanitize.min.js"/>"> </script>

</head>
<body>
	<div class="container">
		<div class="row header">
			<div class="col-md-4">
				<span class="titulo">ANGULAR JS</span>
			</div>
			<div class="col-md-8">				
				<%@ include file="/template/menu.jsp"%>
			</div>
		</div>
		<div class="row jumbotron">
			<div class="col-md-12 content">