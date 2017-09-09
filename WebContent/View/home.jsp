<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<script type="text/javascript">

	function Validate()
	{
		var username = document.myform.username.value;
		var password= document.myform.password.value;
		
		if (username =="")
			{
				document.getElementById("errorname").innerHTML ="please input user name";
			}
		else
			document.getElementById("errorname").innerHTML ="";
		if (password =="")
		{
			document.getElementById("errorpass").innerHTML ="please input user password";
		}
		else
			{
				document.getElementById("errorpass").innerHTML ="";
				if(password.length<=6)
					{
						document.getElementById("errorpass").innerHTML ="password have to be more 6 words";
					}
				else
					document.getElementById("errorpass").innerHTML ="";
			}
			
			
	}

</script>

</head>
<body>
<form name ="myform">
<input type="text" name ="username"/>
	<br/>
	<p id ="errorname"></p>
	<br/>
	
	<input type="password" name ="password" onkeyup="Validate()"/>
	<br/>
	<p id ="errorpass"></p>
	<br/>
	
	<input type="button" value="Validate"  onclick="Validate()"/>
	<br/>
	<br/>
</form>
</body>
</html>