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

    <title>Settings</title>

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
            <li><a href="/dashboard">Dashboard</a></li>
            <li class="active"><a href="/settings">Settings</a></li>
            <li><a href="/logout">Logout</a></li>
          </ul>
        </div>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotron">
        <center>
          <strong>Change your Password here.</strong><p><p>
          <c:if test="${yes!=null}">
            ${yes}<p>
          </c:if>
          <c:if test="${no!=null}">
            ${no}<p>
          </c:if>   
          <form class="form-horizontal" role="form"  method="post" action="/settings">
            <div class="form-group">
              <label class="col-sm-2 control-label"></label>
              <div class="col-sm-10">
                <input type="Password" name="newpassword" class="form-control" placeholder="New Password">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"></label>
              <div class="col-sm-10">
                <input type="Password" name="newpasswordconfirm" class="form-control"  placeholder="Confirm Password">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
              </div>
            </div>
          </form>
          <form class="form-horizontal" role="form"  method="post" action="/settings?delete=true">
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-danger btn-block">Delete Account</button>
                </div>
              </div>
            </div>
          </form>
        </center>   
      </div>
      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>
    </div> <!-- /container -->
  </body>
</html>