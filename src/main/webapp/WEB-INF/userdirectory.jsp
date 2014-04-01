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

    <title>User Directory</title>

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
                <a href="/edituser"><button type="Submit" class="btn btn-primary">Edit User</button></a>
                <a href="/userdirectory"><button type="Submit" class="btn btn-primary">User Directory</button></a>
                <a href="/settings"><button type="Submit" class="btn btn-primary">Settings</button></a>
                <a href="/logout"><button type="Submit" class="btn btn-primary">Logout</button></a>
              </c:if>

              <c:if test="${sessionScope.Username==null}">
                <a href = "/login"><button type="Submit" class="btn btn-primary btn-lg">Login</button></a>
              </c:if>
            </div>
          </center>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotronUser" >       
        <div class="panel-group" id="accordion">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                  <center><h1><strong>User Directory</strong></h1></center>
                </a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
              <div class=" panel-collapse collapse in">
                <c:forEach var="User" items="${List}">
                  <a href="/profile?name=${User.username}">
                    <P><strong><c:out value=" ${User.firstName}"/><hr></strong></P>
                  </a>
                </c:forEach>
            </div>
          </div>
          </div>
        </div>
      </div>
     
      <!-- Foorter -->
      <div class="footer" >
        <div >
          &copy; Company 2013
        </div>
      </div>
    </div> <!-- /container -->
     <!--Jquery-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
    <!--Jquery ends-->
    <!-- Bootstrap.js Layers BEGIN -->
    <script type="text/javascript" script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
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
