#W4D2-Class Notes: Getting and validating user input

##Today's Objectives
+ implement signup with form, route, and action
+ use and understand HTML <form>, <label>, and <input> tags
+ expand knowledge of HTTP through <form>'s method and action attributes
+ add user validations to ensure presence of all fields upon signup
+ use sessions to store information across requests
 

##Topics
+ Collecting user input with forms
+ The form's method and action attributes
+ Receiving form submission data on the server (in Sinatra)
+ Ensuring the validitity of the user data


##Forms & Validations
+

##User input
+ Before we used tux to populate our DB...
+ Now we will be using a `<form></form>` in our `./View`


```html
<!doctype html>
<<head>
  <meta charset="utf-8">
  <title></title>
</head>
<body>
  <h3>Form</h3>
  <form method="GET">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
  </form>

</body>

```

##ACTION? METHOD?
+ GET vs. POST
+ GET is like a query? Asking a question?
+ POST is submiting data, like instructing!

##A new page needed!
1. Display form to user
2. Receive data from user
3. validate data

##Hold on... we...

##The main types

```html
<!doctype html>
<<head>
  <meta charset="utf-8">
  <title></title>
</head>
<body>
  <h3>Form</h3>
  <form method="POST">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">

    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <<input type="submit" value="Submit">
  </form>

</body>

```

#Demo a Submit with regular post!

##Receiving data in Sinatra
+ 

```ruby

  get '/' do

    @id = params[:id]

    puts ========================
    puts params
    puts id
    if id
      @posts = Post.where({id: id})
    else
      @posts = Post.order(created_at: :desc)
    end 

  end
  erb(:index)

    get '/signup' do  
      erb(:signup)
    end

    post '/signup' do  
      username = params[:username]
      email = params[:email]
      password = params[:password]
      puts ========================
      puts params
      user = User.new({username: username, email: email, password: password})

      if user.username.length > 2 && user.password.length > 2
        user.save
        "user was saved!"
      else
        "user cannot be saved!!"
      end
    end    


  end

```






