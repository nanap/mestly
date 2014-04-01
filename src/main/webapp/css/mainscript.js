
      //Map Script Begines
      var map;
      var loca;
      var currentLocation;
     
      function initialize() {

        if ( $('#location').val() != null ) {
          currentLocation = $('#location').val().toString();
          console.log(currentLocation);
        }
        else{
              currentLocation = "5.558581626272206,-0.1961231231689453";
        };

        var temPosition = currentLocation.split(",");
        var lat = temPosition.slice(0,1);
        var lng = temPosition.slice(1,2);

        console.log(lat);
        console.log(lng);

        var myLatlng = new google.maps.LatLng(lat,lng);

        var mapOptions = {
          center: myLatlng,
          zoom: 12
        };  

        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);

        var marker = new google.maps.Marker({
          map: map,
          position:myLatlng,
          title:"Current location"
         });

        google.maps.event.addListener(map, 'click', function(event){
          marker.setPosition(event.latLng);
          loca = event.latLng;
          //loca.lat
          console.log(loca);
          $(".form-map").attr( "action","/edituser?lat=" + loca.lat() +"&lng=" + loca.lng()  );
          console.log( $(".form-map").attr( "action") );
          console.log("should be seen now");
        });
      }

      google.maps.event.addDomListener(window,'load',initialize);
      
      //Map script ends
    


      $('#save').click(function () {
        var btn = $(this);
        btn.button('loading');
        btn.button('reset');
      });


      // $('#save').popover(data-animation="selector")



    

