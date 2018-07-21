<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var xmlhttp;//XMLHttpRequest
function createXMLhttp()
{
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }}
function proc()
{
	createXMLhttp();
	document.getElementById("but").value="正在请求...";
   //给服务器发请求	
    xmlhttp.onreadystatechange=function(){
	  
	   if(xmlhttp.status==200&&xmlhttp.readyState==4)
		   {
		     var restxt=xmlhttp.responseText;
		     document.getElementById("show").innerHTML=restxt;
		     document.getElementById("but").value="OK";
		   }
   };
    xmlhttp.open("GET","welcome?name=lisi");
    xmlhttp.send();
    
}
</script>
</head>
<body>
<center>
 <a href="welcome">Welcome</a>
 <input type="button" value="OK" id="but" onclick="proc();"/>
 <div id="show"></div>
</center>
</body>
</html>