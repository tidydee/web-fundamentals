##W5D1-Sessions and helpers::Post Class Email

Hi Everyone,

Today we learned that HTTP is stateless; each request is independent and is unrelated to any request previously made so an HTTP server (our backend) doesn't remember a particular user's actions. This is where **sessions** come to the rescue.

Like we have access to the **params hash** (in our actions) that is specific to each request, we have access to another hash called session which can be accessed anywhere in our app. By storing some data in the session in the backend, we will also be setting a cookie (data stored on the client side) that will be passed in requests and responses between the client and the server. The server can then check if a cookie has been sent with the request to know if a user has visited the site before.

We implemented a login system. We first created a new **erb** file with a login form that can we access via a get request (a new action in `actions.rb` was created). Our form's data would be submitted via a post request so we created a **new action** in `actions.rb` that receives the data and checks if the user can log in or not. If the login is valid, we set the **user's id** in the session `session[:user_id] = user.id`

We created some **helper methods** in our actions (that can also be used in the views) to check if the user is logged in and access the user's data.

```ruby
  # in our actions.rb file, at the very top 
  helpers do

    def logged_in?
      #if session[:user_id] is nil, the user hasn't logged in yet
      session[:user_id] != nil
    end

    def current_user
      User.find_by(id: session[:user_id])
      # unlike User.find, find_by won't throw an error 
      # and stop the app if session[:user_id] is nil
    end
  end
  
```

We can now use the method `logged_in?` in the views to display a link to the **loggin** page and one to the **signup** page if the user is not logged in but just the link to the logout page if the user is logged in. Using the helper `current_user`, if the user is logged in, we can display their `username` in the banner for example.

To `logout`, we just need to clear the session and set the `user_id` value to **nil**

```ruby
  session[:user_id] = nil
```

In class I also showed you a little CSS trick for getting rid of the bullet point(s) on **empty/error** messages deriving from the `<ul> <li>`. You can use the _**inline-css**_ as shown below:

```html
  <ul>
        <li class="form-group" style="list-style-type: none; color: red;"> <%= @error_message %> </li>
    </ul>
```
OR, the better way would be to to it this way:

```html
  <p style="color: red;"> <%= @error_message if   @error_message %> <p>
```

**Lecture slides**: https://drive.google.com/open?id=1PJnkWX38tz3a8eOPH9k1qZ6flCgMlhK55TPbhXN8VxQ

**Lecture video**: https://drive.google.com/open?id=0B6jyzd9aAZ5NQUUyNG1mRDZybnc

On Wednesday, we will give the ability to users to create a post.

Dawid
