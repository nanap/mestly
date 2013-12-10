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

    <title>Signup</title>

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
            <li ><a href="/">Home</a></li>
            <li class="active"><a href="/signup">Signup</a></li>
            <li><a href="/dashboard">Dashboard</a></li>
            <li> <a href="/settings">Settings</a></i>
            <li><a href="/logout">Logout</a></li>
          </ul>
        </div>
      </div>

      <div class="jumbotronSignup">      
        <center>
          <strong>Signup!</strong><p><p>
            <form class="form-horizontal" role="form"  method="post" action="/signup">
              <c:if test="${errormsgFN !=null}">${errormsgUN}</c:if>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label"><h5>User Name:</h5></label>
                  <div class="col-sm-10">
                    <input type="Text" name="username" class="form-control" placeholder="User Name">
                  </div>
                </div>
              <c:if test="${errormsgFN != null}">${errormsgFN}</c:if>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label"><h5>First Name:</h5></label>
                  <div class="col-sm-10">
                    <input type="Text" name="firstname" class="form-control"  placeholder="First Name">
                  </div>
                </div>
              <c:if test="${errormsgLN != null}">${errormsgLN}</c:if>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label"><h5>Last Name:</h5></label>
                  <div class="col-sm-10">
                    <input type="Text" name="lastname" class="form-control"  placeholder="Last Name">
                  </div>
                </div>
              <c:if test="$erromsgEM != null">${errormsgEM}</c:if>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label"><h5>Email:</h5></label>
                  <div class="col-sm-10">
                    <input type="Text" name="email" class="form-control"  placeholder="Email">
                  </div>
                </div>
              <c:if test="${errormsgPW != null}">${errormsgPW}</c:if>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label"><h5>Password:</h5></label>
                  <div class="col-sm-10">
                    <input type="Password" name="password" class="form-control"  placeholder="Password">
                  </div>
                </div>
               <c:if test="${errormsgPWC != null}">${errormsgPWC}</c:if>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label"><h5>Confirm:</h5></label>
                  <div class="col-sm-10">
                    <input type="Password" name="passwordconfirm" class="form-control"  placeholder="Confirm Password">
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success btn-block">Submit</button>
                  </div>
                </div>
            </form>
        </center>
      </div>

      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>
    </div>
    </div> <!-- /container -->
  </body>
</html>
