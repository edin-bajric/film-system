$(document).ready(function() {
    $("#login-form").submit(function(e) {
      e.preventDefault();
  
      var username = $("#username").val();
      var password = $("#password").val();
  
      if (username === "" || password === "") {
        alert("Please enter your username/email and password");
        return;
      }
  
      $.ajax({
        url: "/film-system/rest/login",
        method: "POST",
        data: {
          username: username,
          password: password
        },
        success: function(response) {
          var token = response.token;
  
          // Store the token in local storage
          localStorage.setItem("token", token);
  
          // Redirect to the homepage or perform other actions
          alert("Login successful!");
          window.location.href = "homepage";
        },
        error: function(error) {
          alert("Login failed. Please check your credentials.");
        }
      });
    });
  });