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

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
      <div >
        <div class="logo">
          <a href="/"><img src="../docs-assets/logo2.png"></a>
        </div>

        <center>
            <div class="masthead">
              
               <!--  <c:if test="${sessionScope.Username!=null}">
                  <a href="/"><button type="Submit" class="btn btn-primary">Home</button></a>
                  <a href="/dashboard"><button type="Submit" class="btn btn-primary">Dashboard</button></a>
                  <a href="/settings"><button type="Submit" class="btn btn-primary">Settings</button></a>
                  <a href="/logout"><button type="Submit" class="btn btn-primary">Logout</button></a>
                </c:if> -->
                <c:if test="${sessionScope.Username==null}">
                  <a href="/"><button type="Submit" class="btn btn-primary">Home</button></a>
                  <a href="/signup"><button type="Submit" class="btn btn-primary">Signup</button></a>
                </c:if>
            </div>
          </center>
        </div>

        <!-- Jumbotron -->
        <div class="jumbotron">       

            <form class="form-horizontal" role="form"  method="post" action="/login">
              
                <strong>                Login</strong><p>

                  <c:if test="${Wronguser != null}">
                    ${Wronguser}<p>
                  </c:if>

                  <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                      <input type="Text" name="username" class="form-control" placeholder="Enter Username">
                    </div>
                  </div>
                  
                  <c:if test="${Wrongpassword != null}">
                    ${Wrongpassword}<p>
                  </c:if>

                  <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                      <input type="Password" name="password" class="form-control"  placeholder="Enter Password">
                    </div>

                    <c:if test="${param.next != null}">
                      <input type="hidden" name="next" value="${param.next}">
                    </c:if>
                    
                  </div>
              
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-lg btn-success btn-block " href="/login">Login</button>
                    </div>
                  </div>
              
            </form>
        </div>
        <!-- End of Jumbotron -->

      <!-- Foorter -->
      <div class="footer" >
        &copy; Company 2013
      </div>
    </div> <!-- /container -->
  </body>
</html>