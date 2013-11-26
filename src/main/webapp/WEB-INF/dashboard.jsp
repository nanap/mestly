<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
    <body>
    	<center>
	        <p>Hello ${username}</p>
	        <p>Your Password is ${password}</p>
	        
	        Please Click <a href="/login">here</a> to logout of the program or.<br>
	        Click <a href="/anotherPage"> here </a> to go to another page.
        </center>
    </body>
</html>