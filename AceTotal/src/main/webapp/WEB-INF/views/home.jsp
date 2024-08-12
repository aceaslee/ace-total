<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<head>
	<title>Home</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		crossorigin="anonymous">
		
	<style>
	.btn_main_page img:hover{
		content : url(resources/btn/TOP_bt1_ON.jpg);
	}
	.btn_main_page img:active{
		content : url(resources/btn/TOP_bt1_OFF.jpg);
	}
	
	.btn_profile img:hover{
		content : url(resources/btn/TOP_bt2_ON.jpg);
	}
	.btn_profile img:active{
		content : url(resources/btn/TOP_bt2_OFF.jpg);
	}
	
	.btn_work img:hover{
		content : url(resources/btn/TOP_bt3_ON.jpg);
	}
	.btn_work img:active{
		content : url(resources/btn/TOP_bt3_OFF.jpg);
	}
	
	.btn_etc img:hover{
		content : url(resources/btn/TOP_bt4_ON.jpg);
	}
	.btn_etc img:active{
		content : url(resources/btn/TOP_bt4_OFF.jpg);
	}
	
	
	</style>
</head>
<body>

	<div class="container-floud">
		<div class="row">
			<div class="d-flex justify-content-center">
				<div id="btn_main_page" class="btn_main_page">
					<img src="resources/btn/TOP_bt1_OFF.jpg">
				</div>
				<div id="btn_profile" class="btn_profile">
					<img src="resources/btn/TOP_bt2_OFF.jpg">
				</div>
				<div id="btn_work" class="btn_work">
					<img src="resources/btn/TOP_bt3_OFF.jpg">
				</div>
				<div id="btn_etc" class="btn_etc">
					<img src="resources/btn/TOP_bt4_OFF.jpg">
				</div>
			</div>
		</div>
		<div class="row" align="center">
			<div id="contents"></div>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#contents").load("main_page");
		});
		
		$("#btn_main_page").click(function(){
			$("#contents").load("main_page");
		});
		
		$("#btn_profile").click(function(){
			$("#contents").load("profile");
		});
		
		$("#btn_work").click(function(){
			$("#contents").load("work");
		});
		
		$("#btn_etc").click(function(){
			$("#contents").load("etc");
		});
	</script>
</body>
</html>
