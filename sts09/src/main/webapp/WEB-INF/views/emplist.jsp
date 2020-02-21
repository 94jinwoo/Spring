<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<!-- meun start -->
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
	<style type="text/css">
		body { padding-top: 70px; }
		.carousel-caption{color: black;}
	</style>
	<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${root }js/bootstrap.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${root }">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav ">
        <li class="active"><a href="${root }">HOME <span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">DEPT <span class="caret"></span></a>
        	<ul class="dropdown-menu">
        		<li><a href="${root }dept/list">LIST</a></li>
            	<li role="separator" class="divider"></li>
        		<li><a href="${root }dept/add">INSERT</a></li>
        	</ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">EMP <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${root }emp/list">LIST</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="${root }emp/add">INSERT</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- meun end -->
<!-- content start -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<ol class="breadcrumb">
			  <li><a href="#">HOME</a></li>
			  <li><a href="#">EMP</a></li>
			  <li class="active">List</li>
			</ol>
		</div>
	</div>	
	<div class="row">
		<div class="col-md-12">
			<!-- content start -->
			
				<div class="page-header">
				  <h1>리스트 페이지 <small>EMP Table List (total : ${total })</small></h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>사번</td>
							<td>이름</td>
							<td>날짜</td>
							<td>금액</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="bean">
						<tr>
							<td><a href="detail/${bean.sabun }">${bean.sabun }</a></td>
							<td><a href="detail/${bean.sabun }">${bean.name }</a></td>
							<td><a href="detail/${bean.sabun }">${bean.nalja }</a></td>
							<td><a href="detail/${bean.sabun }">${bean.pay }</a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			<!-- content end -->
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		
		</div>
	</div>
</div>
<!-- content end -->
</body>
</html>
