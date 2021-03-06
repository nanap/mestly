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
                <a href="/signup"><button type="Submit" class="btn btn-success">Signup</button></a>
              </c:if>
            </div>
          </center>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotron">
        <center>
          <c:if test="${param.next != null}">
            <input type="hidden" name="next" value="${param.next}">
          </c:if>
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
                <button type="submit" class="btn btn-primary btn-block" data-dismiss="modal">Cancel</button>
              </div>
            </div>
          </form>
          
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal">Delete Account</button>
              </div>
            </div>       
        </center>   
      </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Delet Account</h4>
          </div>
          <div class="modal-body">
            We are happy you tried out MESTLY,
            After this action we will not be 
            able to restore your information
            Are you sure you want to delete this 
            account?
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <form role="form"  method="post" action="/settings?delete=true">
              <button type="submit" class="btn btn-primary">Yes, Delete My Account</button>
            </form>
          </div>
        </div>
      </div>
    </div>

      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>
    </div> 

      <!--Jquery-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!--Jquery ends-->
    <!-- Bootstrap.js Layers BEGIN -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <!-- Bootstrap.js Layers ENDS -->

    <!-- /container -->
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