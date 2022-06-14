<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<!--공통 CSS-->
<link rel="stylesheet" type="text/css" href="http://211.63.89.143/html_prj/common/CSS/main_20220321.css">
<style type="text/css">
#backDiv{width:355px; height:205px; margin:0px auto; position:relative;
		background: #FFFFFF url(http://localhost/html_prj/common/images/id_background.png) no-repeat;}
#idBox{position: absolute; top:80px; left:50px}
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("dupBtn").addEventListener("click",searchId);
}//onload

function searchId(){
	var obj=document.cFrm;
	var output="<strong>"+ obj.id.value +"</strong>는 사용가능합니다."
		+"<a href='#void' onclick=\"sendId('"+obj.id.value+"')\"> 사용</a>";
		
	document.getElementById("dupResult").innerHTML=output;
}//searchId

function sendId(id){
	//입력받은 아이디를 부모창으로 전송하고, 자식창을 닫는다.
	opener.window.document.pFrm.id.value=id;
	self.close();
}//sendId

</script>
</head>
<body>
<div id="backDiv">
<div id="idBox">
<form name="cFrm">
<label>아이디</label>
<%-- 자식창에 존재하는 JSP에서 부모창이 넘기는 파라메터를 받아서 value속성의 값으로 넣는다. value="${param.파라미터명}"--%>
<input type="text" name="id" id="id" class="inputBox" value="${ param.id }"/>
<input type="button" value="중복확인" id="dupBtn" class="btn"/>
<div><span id="dupResult"></span></div>
</form>
</div>
</div>
</body>
</html>