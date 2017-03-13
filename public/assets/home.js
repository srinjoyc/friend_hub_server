$( document ).ready(function() {
    console.log( "ready!" );
  //Send the AJAX call to the server
  $.ajax({
    'url' : '/get-models',
    'type' : 'GET',
    'success' : function(data) {
      console.log(data);
      console.log(JSON.stringify(data));
      $('#user-json').text(JSON.stringify(data['user'], undefined, 2));
      $('#hub-json').text(JSON.stringify(data['hub'], undefined, 2));
    }
  });
  $.ajax({
    'url' : '/get-user-routes',
    'type' : 'GET',
    'success' : function(data) {
      console.log(data);
      console.log(JSON.stringify(data));
      $('#user-routes').text(JSON.stringify(data, undefined, 2));
      if (data == "success") {
        alert('request sent!');
      }
    }
  });
  $.ajax({
    'url' : '/get-hub-routes',
    'type' : 'GET',
    'success' : function(data) {
      console.log(data);
      console.log(JSON.stringify(data));
      $('#hub-routes').text(JSON.stringify(data, undefined, 2));
      if (data == "success") {
        alert('request sent!');
      }
    }
  });

});