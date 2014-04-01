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

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/justified-nav.css" rel="stylesheet">

    <!-- Map -->
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCSKaW9vzd3xgla8b1E3DyM1hlrZjRb2lY&sensor=false">
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
    </script>
    <script type="text/javascript" src="../css/mainscript.js">
    </script>


    <title>Edit User</title>
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
                <a href="/"><button type="Submit" class="btn btn-primary">Home</button></a>
                <a href = "/login?name=${user.username}"><button type="Submit" class="btn btn-primary">Login</button></a>
                <a href="/signup"><button type="Submit" class="btn btn-success">Signup</button></a>
              </c:if>
            </div>
          </center>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotronProfile" >

      <div class="">
        <div class="">
          <div class="col-md-12">
            <center><h3><a style="color:white;font:verdana;">Edit your Profile</a></h3></center>
          </div>
        </div>

        <div class="">
          <div class="col-md-5">
            <form method="post" action="/editUser" class="form-horizontal" role="form" enctype="multipart/form-data">
              <div class="form-group">
                
                <div class="col-sm-12">
                  <div class="fileinput fileinput-new col-sm-7" data-provides="fileinput" data-toggle="tooltip" data-placement="left" title="Click on  Choose Picture size should be 140 x 140px">
                    <div>
                      <label for="profile_picture" class="col-sm-12 tcontrol-label"><a style="color:black;font:verdana 30px;fontsize:30px;">Profile Picture</label>
                    </div>
                    <span class="btn btn-default btn-file col-sm-12" \>
                      <span class="fileinput-new" data-toggle="tooltip" data-placement="left" title="Click on  Choose Picture size should be 140 x 140px">Select image</span>
                      <input type="file" name="profile_picture">
                    </span>
                    <br>                                   
                    <span class="fileinput-exists btn btn-primary col-sm-12"> <br>Change<br></span>
                  </div>

                  <div class="fileinput-new thumbnail col-sm-5 col-sm-offset-0" style="width: 150px; height: 150px;" data-toggle="tooltip" data-placement="left" title="Picture size should be 140 x 140px">
                    <img src="../docs-assets/avatar.png" alt="Default Profile Picture">
                  </div>
                  
                </div>
              </div>
              <div class="form-group">
                <label for="oneLiner" class="col-sm-4 control-label">
                  One Liner.
                </label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="oneLiner" placeholder="Describe yourself in one line" value="">
                </div>
              </div>
              <div class="form-group">
                <label for="location" class="col-sm-4 control-label">Location</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="location" placeholder="Where are you living right now?" value="">
                </div>
              </div>
              <div class="form-group">
                <label for="shortBio" class="col-sm-4 control-label">
                  Short Bio
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="button" class="btn btn-default" id="save" data-loading-text="Loading..." class="btn btn-primary">Save Changes</button>
                    </div>
                  </div>  
                </label> 
                <div class="col-sm-8">
                  <textarea name="shortBio" class="form-control" maxlength="560" rows="5" placeholder="Give us a short bio"></textarea>
                  </div>
              </div>
            </form>         
          </div>
          <div class="col-md-7"> 
            <form method="post" action="/addTag" class="form-horizontal" role="form">
              <div class="form-group" >
                <label for="tag" class="col-sm-2 control-label" style="color:black" id="tags"  data-container="button" data-toggle="tooltip" data-placement="left" title="Add Tags to your profile, You can add Tags like (e.g., tech, web dev, front end, etc.)">
                  Tags</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" name="tag" placeholder="Use tags to describe who you are.">
                  </div>
                <div class="col-sm-2">
                    <button type="button" class="btn btn btn-success" data-container="button" data-toggle="tooltip" data-placement="left" title="Add Tags to your profile, You can add Tags like (e.g., tech, web dev, front end, etc.) " >Add Tags</button>
                  </div>
              </div>            
            </form>
            <hr>
            <form method="post" action="#" class="form-horizontal" role="form">
              <div class="form-group">
                <label for="tag" class="col-sm-2 control-label" style="color:black">Services</label>
                  <div class="col-sm-8">
                    <select class="form-control" name="service"></select>
                  </div>
                    <br><hr>
                  <div class="col-sm-12">
                    <label for="tag" class="col-sm-2 control-label" style="color:black"> URL </label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="url" placeholder="Type in your account URL.">
                    </div>
                  </div>  
                  <div class="col-sm-2">
                    <button type="submit" class="btn btn btn-success">Add</button>
                  </div>
              </div>
            </form>
             <hr>
            <form class="form-map" role="form" method="post" action="">
              <c:if test="${location != null}">
                <input type="hidden" name="location" value="${location}" id="location">
              </c:if>
              <div class="col-sm-12 col-lg-offset-1">
                <div id="map-canvas" style="width: 600px; height: 300px" class="col-md-8"></div>
              </div>
              <div class="col-sm-10 col-lg-5 col-sm-offset-5">
                <br><button type="submit" class="btn btn-primary btn-block" id="save" data-loading-text="Setting Location...">Submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>
    </div> <!-- /container -->
    

      
    <!--Jquery-->
    
    <!--Jquery ends-->
    <script type="text/javascript" src="../css/bootstrap.min.js"></script>
    <!-- AddThis Smart Layers BEGIN -->
    <!-- Go to http://www.addthis.com/get/smart-layers to customize -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-523b48aa5788ef47"></script>
    <script type="text/javascript">
    addthis.layers({
      'theme' : 'transparent',
      'share' : {
        'position' : 'right',
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

    <script>
    $('#save').click(function () {
      var btn = $(this);
      btn.button('loading');
    });
    </script>
  </body>
</html>
