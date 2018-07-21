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
	  }
}

function checkEmail()
{ 
	createXMLhttp();
	
	xmlhttp.open("POST","checkEmail");
	
	xmlhttp.onreadystatechange=proc;
	
	var email=document.getElementById("email").value;
	
	
	xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xmlhttp.send("email="+email+"&age=23");
}
function proc()
{
	 if(xmlhttp.status==200&&xmlhttp.readyState==4)
	   {
		 var tip=document.getElementById("tip");
		 if(xmlhttp.responseText==1)
			 {
			    tip.innerHTML="<span style='color:red;'>不能注册</span>";
			 }else
				 {
				   tip.innerHTML="<span style='color:green;'>可以注册</span>";
				 }
	   }
}


</script>
</head>
<body>
<center>
    Email:<input type="text" name="email" id="email" onblur="checkEmail();"/><span id="tip"></span><br/>
         姓名:<input type="text"/>
         
         <form action="ss" method="post" >
            <input type="submit" value="Ok"/>
         </form>
</center>
</body>
</html>