<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>
			login
		</title>
	</head>


	<body>
		
			<h3>Welcome, nana Sign in</h3>
				<form method="post" action="/login">
					<input type="text" name="name" placeholder="UserName"><br>
					<input type="text" name="password" placeholder="Password"><br>
						<c:if test="${param.next != null}">
						    <input type="hidden" name="next" value="${param.next}">
						</c:if>
					<input type="submit" value="Login">
				</form>
		
	</body>
</html>