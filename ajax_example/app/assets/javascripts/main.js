$(function() {
  //Main codd

  setup_signup()
  setup_login()



  // FUNCTIONS

  function setup_signup() {
    $('#signup-show').click(function() {
      $('#signup').addClass('show')
    })

    $('#signup .close').click(function() {
      $('#signup').removeClass('show')
    })

    $('#signup-button').click(function() {
      var data = {
        email: $('#email').val(),
        password: $('#password').val(),
        password_confirmation: $('#password_confirmation').val(),
        first_name: $('#first_name').val(),
        last_name: $('#last_name').val()
      }

        $.post(
          '/users/signup',
          data,
          function(response) {
            if (response.success) {
              $('#container').html('Successfully signed up!')
            } else {
              $('#container').html(response.errors)
            }
          }
        )
    })

  }

  function setup_login() {
    $('#login-show').click(function() {
      $('#login').addClass('show')
    })

    $('#login .close').click(function() {
      $('#login').removeClass('show')
    })
  }


})
