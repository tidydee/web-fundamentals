##W5D1-Sessions and helpers::Class Prep Notes

##Today's Objectives
+ Log user in with sessions
+ Redirect after login
+ Create helper methods


##Give user ability to signup and create an user account.


#Slides

##But how does it work?
+ Cookies

##An HTTP Request
+ Demo Cookie in **Compass**.
  ..* DevTools/Application/cookies
+ 

## login.rb

```html
  <main role="main">
    <form action="/login" method="POST">
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" value="" placeholder="Username">
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" value="" placeholder="Password">
      </div>
      <div class="form-group">
        <input type="submit" value="Login">
      </div>
    </form>
  </main>

```

```ruby
  post '/login' do
    puts ===============================
    puts params

    login_username = params[:username]
    login_password = params[:password]

    @login_user = User.find_by({username: login_username})

    if @login_user
      if login_password == @login_user.password
        session[:user_id] = @login_user.id
      else
          "Incorrect username and password!"
      end
    else
      "Incorrect username and password!"
    end
  end

```
