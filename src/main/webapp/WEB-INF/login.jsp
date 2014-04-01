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
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Latest compiled and minified JavaScript -->
    

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
      <div >
        <div class="logo">
          <a href="/"><img src="../docs-assets/logo4.png"></a>
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
                  <a href="/signup"><button type="Submit" class="btn btn-success">Signup</button></a>
                </c:if>
            </div>
          </center>
        </div>

        <!-- Jumbotron -->
        <div class="jumbotronSignup">       
          
            <form class="form-horizontal" role="form"  method="post" action="/login">
                <div class="col-md-4  col-md-offset-2">
                    <!-- <div class="form-group">
                      <label class="col-sm-2  control-label"></label>
                      <div class="col-sm-10 col-md-6 col-md-offset-2">
                        <strong>Login</strong>
                      </div>
                    </div> -->

                    <c:if test="${Wronguser != null}">
                      ${Wronguser}<p>
                    </c:if>
                    
                    <div class="form-group">
                      <label class="col-sm-2  control-label"></label>
                      <div class="col-sm-10 col-md-6 col-md-offset-2">
                        <input type="Text" name="username" class="form-control" placeholder="Enter Username" data-toggle="tooltip" data-placement="left" title="Password should be 7 more alpha numeric characters">
                      </div>
                    </div>
                    
                    <c:if test="${Wrongpassword != null}">
                      ${Wrongpassword}<p>
                    </c:if>

                    <div class="form-group">
                      <label class="col-sm-2  control-label"></label>
                      <div class="col-sm-10 col-md-6 col-md-offset-2">
                        <input type="Password" name="password" class="form-control"  placeholder="Enter Password">
                      </div>

                      <c:if test="${param.next != null}">
                        <input type="hidden" name="next" value="${param.next}">
                      </c:if>
                      
                    </div>
                
                    <div class="form-group">
                    
                      <div class="col-sm-offset-2 col-sm-10 col-md-6 col-md-offset-4">
                        <button type="submit" class="btn btn-sm btn-success btn-block " href="/login">Login</button>
                      </div>
                    </div>
                  </div>
            </form>
            <div class="aboutus col-md-4 col-md-offset-0">
              Mestly is a social networking application for developers.</p>
              It helps them create a beautiful online presence and </p>
              find people with similar interests. It is a prettier </p>
              version of  Linkedin and a competitor to Zerply.</p>
            </div>
             
        </div>
        <!-- End of Jumbotron -->

      <!-- Foorter -->
      <div class="footer" >
        &copy; Company 2013
      </div>
    </div> <!-- /container -->
    <!--Jquery-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!--Jquery ends-->
    <!-- Bootstrap.js Layers BEGIN -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <!-- Bootstrap.js Layers ENDS -->
    <!-- AddThis Smart Layers BEGIN -->
    <!-- Go to http://www.addthis.com/get/smart-layers to customize -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-523b48aa5788ef47"></script>
    <script type="text/javascript">
    addthis.layers({
      'theme' : 'transparent',
      'share' : {
        'position' : 'left',
        'numPreferredServices' : 5
      }, 
      'follow' : {
        'services' : [
        {'service': 'facebook', 'id': 'nanaprempeh009'},
        {'service': 'twitter', 'id': 'NanaAviation'},
        {'service': 'linkedin', 'id': 'nanaprempeh'},
        {'service': 'google_follow', 'id': '+NanaOWOAgyeman'}
        ]
      },  
      'whatsnext' : {},  
      'recommended' : {} 
    });
    </script>
    <!-- AddThis Smart Layers END -->
  </body>
</html>