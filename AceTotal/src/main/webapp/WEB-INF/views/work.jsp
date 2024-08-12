<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
	.works_bt img:hover{
		content : url(resources/btn/Works_bt_ON.jpg);
	}
	.graphic_bt img:active{
		content : url(resources/btn/Graphic_bt_OFF.jpg);
	}
	
	.ci_bt img:hover{
		content : url(resources/btn/CI_bt_ON.jpg);
	}
	.fine_bt img:active{
		content : url(resources/btn/Fine_bt_OFF.jpg);
	}
	
	.product_bt img:hover{
		content : url(resources/btn/Product_bt_ON.jpg);
	}
	.web_bt img:active{
		content : url(resources/btn/Web_bt_OFF.jpg);
	}
	
	</style>
</head>
<body>

	<div class="d-flex justify-content-center">
		<div class="d-flex align-items-start flex-column bd-highlight mb-3" style="height: 200px;">
		  <div id="works_bt" class="mb-auto p-2 bd-highlight">
		  	<img src="resources/btn/Works_bt_OFF.jpg">
		  </div>
		  <div id="graphic_bt" class="p-2 bd-highlight">
		  	<img src="resources/btn/Graphic_bt_OFF.jpg">
		  </div>
		  <div id="ci_bt" class="p-2 bd-highlight">
		  	<img src="resources/btn/CI_bt_OFF.jpg">
		  </div>
		  <div id="fine_bt" class="p-2 bd-highlight">
		  	<img src="resources/btn/Fine_bt_OFF.jpg">
		  </div>
		  <div id="product_bt" class="p-2 bd-highlight">
		  	<img src="resources/btn/Product_bt_OFF.jpg">
		  </div>
		  <div id="web_bt" class="p-2 bd-highlight">
		  	<img src="resources/btn/Web_bt_OFF.jpg">
		  </div>
		</div>
		<div>
			<div id="art-contents"></div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
	
		//works_bt  graphic_bt ci_bt fine_bt  product_bt  web_bt
		//file:///C:/DEV_STS/ACE_LEE_Cafe24/JeseonMajesty.jpg
		
		var rssAddr = "resources/btn/";
		var graphic = [
			"JeseonMajesty"
			, "SocialEquality", 
			"SocialMediaAcceptance"
		];
		var ci = [
			"iT"
			, "SoundOfKorea"
			, "Korea"
			, "Ssonsal"
		];
		
		var fineArt = [
			"Campbell"
		];
		
		var productDesign = [
			"DictDesign"
			,"PortableBook"
			,"Role"
			,"SimbolOfKorea"
		];
		
		var webDesign = [
			"CyberEX"
		];
		
		function getImgUrl(valArr){
			var rstTag="";
			
			for(var i=0 ; i<valArr.length; i++){
				var tag = "<div class='p-5'><img src='resources/btn/";
				tag += valArr[i];
				tag += ".jpg'></div>"
				rstTag += tag;
			}
			return rstTag;
		}
		
		$(document).ready(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(graphic));
			$("#art-contents").append(getImgUrl(ci));
			$("#art-contents").append(getImgUrl(fineArt));
			$("#art-contents").append(getImgUrl(productDesign));
			$("#art-contents").append(getImgUrl(webDesign));
		});
		
		$("#works_bt").click(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(graphic));
			$("#art-contents").append(getImgUrl(ci));
			$("#art-contents").append(getImgUrl(fineArt));
			$("#art-contents").append(getImgUrl(productDesign));
			$("#art-contents").append(getImgUrl(webDesign));
		});
		
		$("#graphic_bt").click(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(graphic));
		});
		
		$("#ci_bt").click(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(ci));
		});
		
		$("#fine_bt").click(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(fineArt));
		});
		
		$("#product_bt").click(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(productDesign));
		});
		$("#web_bt").click(function(){
			$("#art-contents").empty();
			$("#art-contents").append(getImgUrl(webDesign));
		});
	</script>

</body>
</html>