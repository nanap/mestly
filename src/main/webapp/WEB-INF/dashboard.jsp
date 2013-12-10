<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Dashboard</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">
  </head>
  <body>
    
    <div class="container">
      <div >
        <div class="logo" >
          <a href="/"><img border="0" src="../../docs-assets/logo3.png" alt="Logo" width="400" height="220" ></img></a>
        </div>
          <center>
            <div class="masthead">
              <c:if test="${sessionScope.Username!=null}">
                <a href="/"><button type="Submit" class="btn btn-primary">Home</button></a>
                <a href="/dashboard"><button type="Submit" class="btn btn-primary">Dashboard</button></a>
                <a href="/profile"><button type="Submit" class="btn btn-primary">Profile</button></a>
                <a href="/settings"><button type="Submit" class="btn btn-primary">Settings</button></a>
                <a href="/logout"><button type="Submit" class="btn btn-primary">Logout</button></a>
              </c:if>

              <c:if test="${sessionScope.Username==null}">
                <a href="/"><button type="Submit" class="btn btn-primary">Home</button></a>
                <a href = "/login?name=${user.username}"><button type="Submit" class="btn btn-primary">Login</button></a>
                <a href="/signup"><button type="Submit" class="btn btn-success">Signup</button></a>
              </c:if>
            </div>
          </center>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotron">
        <center>
          Welcome!<p>
          Your email address is ${Email}<p>
          Your user-name is ${Username} <p> 
        </center>   
      </div>

      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>
    </div> <!-- /container -->
  </body>
</html>
