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
style=" background: #400000;"
</c:if>
	<c:if test="${firstteam=='B' }">
style=" background: #000040;"
</c:if>>
	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="modal" data-target="#myModal">
				<span class="glyphicon glyphicon-qrcode"></span> Shoe QRCode
			</button>
			<a class="navbar-brand" href="#">Web Code Name</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-3">
			<button type="button" class="btn btn-default navbar-btn"
				data-toggle="modal" data-target="#myModal">
				<span class="glyphicon glyphicon-qrcode"></span> Shoe QRCode
			</button>
		</div>
		</div>
	</nav>

	<div class="container-fluid"
		<c:if test="${firstteam=='R' }">
style=" background: radial-gradient(#000000, #400000, #400000);"
</c:if>
		<c:if test="${firstteam=='B' }">
style=" background: radial-gradient(#000000, #000040, #000040);"
</c:if>>
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
							<h1>
								<span class="glyphicon glyphicon-star"></span>
							</h1>
						</div>
					</div>
				</c:if>
				<c:if test="${color=='B' }">
					<div align="center" class="panel panel-info">
						<div class="panel-heading">
							<h1>
								<span class="glyphicon glyphicon-star"></span>
							</h1>
						</div>
					</div>
				</c:if>
				<c:if test="${color=='K' }">
					<div align="center" class="panel panel-default">
						<div class="panel-heading">
							<h1>
								<span class="glyphicon glyphicon-exclamation-sign"></span>
							</h1>
						</div>
					</div>
				</c:if>
				<c:if test="${color=='Y' }">
					<div align="center" class="panel panel-warning">
						<div class="panel-heading">
							<h1>
								<span class="glyphicon glyphicon-star-empty"></span>
							</h1>
						</div>
					</div>
				</c:if>
			</div>
			</c:forEach>
		</div>




		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">QR-Code for member
							players' device</h4>
					</div>
					<div align="center" class="modal-body">
						<div id="qrcode"></div>
						<script type="text/javascript">
							jQuery('#qrcode').qrcode(
									window.location.href.split("leader")[0]
											+ "member?colorgrid=${colorgrid }");
						</script>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(function() {
				$('#myModal').modal();
			});
		</script>



	</div>
</body>
</html>