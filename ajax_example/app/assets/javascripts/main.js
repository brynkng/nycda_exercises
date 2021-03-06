$(function() {
  //Main codd

  setup_signup()
  setup_login()



  // FUNCTIONS

  function setup_signup() {
    $('#signup-show').click(function() {
      $('.panel').removeClass('show');
      $('#signup').addClass('show')
    })

    $('#signup .close').click(function() {
      $('#signup').removeClass('show')
    })

    $('#signup-button').click(function() {
      var data = {
        email: $('#signup .email').val(),
        password: $('#signup .password').val(),
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
      $('.panel').removeClass('show');
      $('#login').addClass('show')
    })

    $('#login .close').click(function() {
      $('#login').removeClass('show')
    })

    $('#login-button').click(function() {
      var data = {
        email: $('#login .email').val(),
        password: $('#login .password').val(),
      }

        $.post(
          '/sessions/login',
          data,
          function(response) {
            if (response.success) {
              $('#container').html('Successfully signed logged in!')
            } else {
              $('#container').html('Either the email or password is Wrong!')
            }
          }
        )
    })
  }
})
