<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
	#works_bt img{
		width: 198px;
		height : 75px;
	}
	#graphic_bt img{
		width: 198px;
		height : 57px;
	}
	
	#ci_bt img{
		width: 198px;
		height : 51px;
	}
	#fine_bt img{
		width: 198px;
		height : 58px;
	}
	
	#product_bt img{
		width: 198px;
		height : 54px;
	}
	#web_bt img{
		width: 198px;
		height : 56px;
	}
	#art-contents{
		height : 321px;
	}
	

	#works_bt img:hover{
		content : url(resources/btn/Works_bt_ON.jpg);
	}
	#graphic_bt img:hover{
		content : url(resources/btn/Graphic_bt_ON.jpg);
	}
	
	#ci_bt img:hover{
		content : url(resources/btn/CI_bt_ON.jpg);
	}
	#fine_bt img:hover{
		content : url(resources/btn/Fine_bt_ON.jpg);
	}
	
	#product_bt img:hover{
		content : url(resources/btn/Product_bt_ON.jpg);
	}
	#web_bt img:hover{
		content : url(resources/btn/Web_bt_ON.jpg);
	}
	
	#works_bt img:active{
		content : url(resources/btn/Works_bt_OFF.jpg);
	}
	#graphic_bt img:active{
		content : url(resources/btn/Graphic_bt_OFF.jpg);
	}
	
	#ci_bt img:active{
		content : url(resources/btn/CI_bt_OFF.jpg);
	}
	#fine_bt img:active{
		content : url(resources/btn/Fine_bt_OFF.jpg);
	}
	
	#product_bt img:active{
		content : url(resources/btn/Product_bt_OFF.jpg);
	}
	#web_bt img:active{
		content : url(resources/btn/Web_bt_OFF.jpg);
	}
	
	.parent-scroll-bar{
		width: 100%;
	    height: 100%;
	    overflow: hidden;
	}
	
	.hide-scroll-bar{
		width: 100%;
	    height: 100%;
	    overflow-y: scroll;
	    padding-right: 17px; /* Increase/decrease this value for cross-browser compatibility */
	    box-sizing: content-box; /* So the width will be 100% + 17px */
	}
	
</style>
</head>
<body>
<div class="container-fluid mt-1">
  <div class="row">
  		<div class="col-lg-3 col-md-2"></div>
  		<div class="col-lg-2 col-md-3 d-block">
			<div id="works_bt" class="mb-auto p-1 bd-highlight">
				<img src="resources/btn/Works_bt_OFF.jpg">
			</div>
			<div id="graphic_bt" class="bd-highlight">
				<img src="resources/btn/Graphic_bt_OFF.jpg">
			</div>
			<div id="ci_bt" class="bd-highlight">
				<img src="resources/btn/CI_bt_OFF.jpg">
			</div>
			<div id="fine_bt" class="bd-highlight">
				<img src="resources/btn/Fine_bt_OFF.jpg">
			</div>
			<div id="product_bt" class="bd-highlight">
				<img src="resources/btn/Product_bt_OFF.jpg">
			</div>
			<div id="web_bt" class="bd-highlight">
				<img src="resources/btn/Web_bt_OFF.jpg">
			</div>
  		</div>
  		<div class="col-lg-5 col-md-7 overflow-auto" >
  			<div class="d-flex align-items-start flex-column bd-highlight mb-3" id="art-contents"></div>
  		
  		</div>
  		<div class="col-lg-2 col-md-0"></div>
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
			var tag = "<div><img src='resources/btn/";
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