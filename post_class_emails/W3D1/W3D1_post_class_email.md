###Hi Everyone,

Last week, we created an array of post variables (each post is a hash) and we were converting that array into a string that we were sending to the browser...it wasn't pretty. Instead of sending a raw string, we would like to use the post data to populate our view (html) and send that to the browser. Today we linked our HTML to our Ruby code using ERB (Embedded Ruby) files instead of HTML files. Our HTML used to be very static and was not using the data we created in our actions.rb file. Thanks to Sinatra and ERB, we can now use our Ruby data into our views (just like we used string interpolation to use Ruby data into a string). Our views have now become dynamic templates and we have separated the concerns, the view is only in charge of displaying the data and actions.rb 'stores' the data and makes it available to the view.

To run Ruby code in the view, we need to use 'Alligator tags' (just like **`"#{}"`** enabled us to use some Ruby code in a string). These tags enable us to differentiate our Ruby code from regular HTML There are 2 types of tags:

One for logic that won't be rendered:

```html
<% if user_is_logged_in %>
  <p><a href="/logout">Log out</a></p>
<% else %>
  <p><a href="/login">Log in</a></p>
  <p><a href="/signup">Sign up</a></p>
<% end %>
```

One for rendering content:

```html
<h3>
  <%= post[:humanized_time_ago] %>
</h3>
```

We can use conditional statements, loops etc...in our views (erb files) which are now a lot 'smarter' and powerful.

Last week we saw that Sinatra renders the last thing in our 'get' method so to render our erb file, we will call the erb method at the end of our 'get' block, passing the name of the view we want to render:

```ruby
erb :index
```

or other syntax that makes it more obvious that you are calling a method:

```ruby
erb(:index)
```

Sinatra will look into the app/views folder (by convention) for an erb file matching the name that was passed to the erb method. It will parse the file, run any Ruby code and return the resulting html, ready to be sent to the browser.

In order to be able to use the data we define in our actions.rb file in our ERB file, we need to expand the scope of our variables. Currently, our post variables are only accessible in our **`get '/'`** method. To do so, instead of calling a variable post, we need to rename it **`@post`**. Prepending the **`"@"`** sign to our variable name makes it an **Instance variable** which is more visible and can be accessed in our views.

In our ERB file:
----------------

```html
<p><%= post[:username] %></p>
```

the **`post` variable** wouldn't work but after renaming our variable to **`@post`** into our **actions.rb**, we can use it in our ERB file.

```html
<p><%= @post[:username] %></p>
```

In order to clean up our code and make it **DRYer** (Don't Repeat Yourself), we can put all of our post variables into an array and loop through the array in our view.

In `actions.rb`:
----------------

```ruby
@posts = [first_post, second_post, third_post] 
```

In `index.erb`:
---------------

```html
<% @posts.each do |post| %>
    <h2 class="user-info"><%= post[:username] %></h2>
<% end %>
```

For each post in our **`@posts`** array, we will display the username.
This makes our code more scalable, the array could contain 100 posts, our code won't change and if we decide that we want to add some other tags, change the **`h2`** into a **`h3`** or change the name of the class, we will make the update in one place only.

In order to make our code even DRYer, we looked into layouts. It is very likely that on all our views, we will have the same header, same footer and we will be importing the same CSS files with the basic styles for our site. Instead of making a brand new HTML page for all our views and copy these all the time (and making changes in a lot of pages when we decide that we want a new header for example), we can use a layout. It will contain anything that is common to every page and everything specific to our index page for example will be kept in our **`index.erb`** file.

layout.erb
----------
```html
<html>
    <head>
        #include your CSS files, Google fonts etc...
    </head>
    <body>
        <header>
            #can include a common header
        </header>
        <%= yield %>
        # here we use the render alligator tag and the yield variable 
        #is a reference to the view passed to the erb method in our actions file 
        for example erb(:index)
        <footer>
            # can include a common footer
        </footer>
    </body>
</html>
```

When we call the erb method passing the view index for example, by convention, Sinatra is going to check if there is a file called **`layout.erb`** and it will replace the **`<%= yield %>`** tag by the content of the view passed to the erb method (so in this example, index.erb)

**Lecture slides**: https://drive.google.com/open?id=1oS7Mf4kGOzEh7xZzBdKF1wqNkUDc2YKkHQ7negFpugU

**Lecture video**: https://drive.google.com/open?id=0B6jyzd9aAZ5NblVwTDFnTUo3NDQ

**W3D1 Tutorial Video**: https://drive.google.com/open?id=0B6jyzd9aAZ5NZF84aFhnM2FZNjg

**Yellow Pages Code Solution**: https://drive.google.com/open?id=0B6jyzd9aAZ5NTkZVQVkzd2s4VTQ

See you on Wednesday to talk about databases!

Dawid

http://pt-web-compass2.lighthouselabs.ca/days/w3d1/activities/19