function loginUser(username, password) {
    if (username === "" || password === "") {
      alert("Please fill in all fields");
      return;
    }
  
    $.ajax({
      url: "/rest/login",
      method: "POST",
      data: {
        username: username,
        password: password
      },
      success: function (response) {
        var token = response.token;
  
        localStorage.setItem('token', token);
  
        $.ajaxSetup({
          headers: {
            'Authorization': 'Bearer ' + token
          }
        });
  
        alert("Login successful!");
        window.location.href = "#homepage";
        location.reload();
      },
      error: function (error) {
        alert("Login failed. Please try again.", error);
      },
    });
  }
  
  $(document).ready(function () {
    $("#login").submit(function (e) {
      e.preventDefault();
  
      var username = $("#username").val();
      var password = $("#password").val();
  
      loginUser(username, password);
      
    });
  });
  
