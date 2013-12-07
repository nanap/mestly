<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="Nana Opoku" content="">
    <link rel="shortcut icon" href="../docs-assets/favicon.png">

    <title>Home</title>

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
                <a href="/settings"><button type="Submit" class="btn btn-primary">Settings</button></a>
                <a href="/logout"><button type="Submit" class="btn btn-primary">Logout</button></a>
              </c:if>

              <c:if test="${sessionScope.Username==null}">
                <a href = "/login"><button type="Submit" class="btn btn-primary btn-lg">Login</button></a>
                <!-- <a href="/signup"><button type="Submit" class="btn btn-success">Signup</button></a> -->
              </c:if>
            </div>
          </center>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotron col-md-12">
        <center><h1><strong>Welcome to Mestly</strong></h1></center>
        <p><a class="btn btn-lg btn-success" href="/signup" role="button">Signup Now</a></p>
      </div>
      <div class="members">
        <div class="list">
          <strong>Trending Members:</strong>
          <c:forEach var="User" items="${List}">
            <strong><c:out value="/  ${User.firstName}" /></strong>
          </c:forEach>
        </div>
      </div>
      <!-- Foorter -->
      <div class="footer" >
        <div >
          &copy; Company 2013
        </div>
      </div>
    </div> <!-- /container -->
  </body>
</html>
