$(document).ready(function () {
  $("#registration").submit(function (e) {
    e.preventDefault();

    var username = $("#username").val();
    var email = $("#email").val();
    var password = $("#npassword").val();
    var confirmPassword = $("#rpassword").val();

    if (
      username === "" ||
      email === "" ||
      password === "" ||
      confirmPassword === ""
    ) {
      alert("Please fill in all fields");
      return;
    }

    if (password !== confirmPassword) {
      alert("Passwords do not match");
      return;
    }

    $.ajax({
      url: "/rest/user",
      method: "POST",
      data: {
        username: username,
        email: email,
        password: password,
      },
      success: function () {
        alert("Registration successful!");

        window.location.href = "#login-page";
      },
      error: function (error) {
        alert("Registration failed. Please try again.", error);
      },
    });
  });
});

