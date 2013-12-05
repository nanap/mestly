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
      <div>
        <div>
          <a href="/" class="logo1"><img src="../docs-assets/logo.png"></a>
          <a href="/" class="logo2"><img src="../docs-assets/logo.png"></a>
        </div>
        <div class="masthead">
          <ul class="nav nav-justified">
            <li><a href="/">Home</a></li>
            <li class="active"><a href="/dashboard">Dashboard</a></li>
            <li> <a href="/settings">Settings</a></i>
            <li><a href="/logout">Logout</a></li>
          </ul>
        </div>
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
