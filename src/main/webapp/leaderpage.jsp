<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script src="js/jquery.qrcode.min.js"></script>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body 
<c:if test="${firstteam=='R' }">
style=" background: linear-gradient(45deg, #580000, #000000);"
</c:if>

<c:if test="${firstteam=='B' }">
style=" background: linear-gradient(45deg, #000058, #000000);"
</c:if>
>

	<div class="container-fluid" >
<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
     <p class="navbar-brand">Web Code Name</p>
     <p class="navbar-text">
     Version 0.0.1 alpha
     </p>
    </div>
    </div>
</nav>

		<div class="row">
			<c:forEach items="${fn:split(colorgrid, '-')}" var="color"
				varStatus="vs">
				<c:if test="${vs.index%5==0 }">
		</div>
		<div class="row">
		<div class="col-xs-1"></div>
			</c:if>

			<div class="col-xs-2">

				<c:if test="${color=='R' }">
					<div align="center" class="panel panel-danger">
						<div class="panel-heading">
							Red<br />Team
						</div>
					</div>
				</c:if>
				<c:if test="${color=='B' }">
					<div align="center" class="panel panel-info">
						<div class="panel-heading">
							Blue<br />Team
						</div>
					</div>
				</c:if>
				<c:if test="${color=='K' }">
					<div align="center" class="panel panel-default">
						<div class="panel-heading">
							Killer<br />
							　<span class="glyphicon glyphicon-exclamation-sign"></span>　
						</div>
					</div>
				</c:if>
				<c:if test="${color=='Y' }">
					<div align="center" class="panel panel-warning">
						<div class="panel-heading">
							No<br />Team
						</div>
					</div>
				</c:if>
			</div>
			</c:forEach>
		</div>
		<div class="row">
		<div class="col-xs-1"></div>
		<div class="col-xs-10">
		<div align="center" class="panel panel-default">
		<div class="panel-heading">
		QR-Code for member players' device
		</div>
		<div class="panel-body">
		<div id="qrcode"></div>
		<script type="text/javascript">
		
		jQuery('#qrcode').qrcode(window.location.href.split("leader")[0]+"member?colorgrid=${colorgrid }");
		
		</script>
		
		</div>
		</div>
		</div>
		
		</div>
	</div>
</body>
</html>