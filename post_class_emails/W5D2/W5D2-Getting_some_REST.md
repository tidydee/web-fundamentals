Subject: Getting some REST

Hi Everyone,

Today we talked about RESTful routes and partials. REST is a pattern to follow when defining the routes that enable us to perform CRUD (Create, Read, Update and Delete) operations on our models. By following this convention, we can better structure our webapp and it makes it easier for other people to understand it too.

We already know about the actions `GET` and `POST` which are `HTTP` verbs but to be able to perform all the **CRUD** operations on our models, we will need 2 other actions, `PUT/PATCH` and `DELETE`.

```ruby
GET #retrieve data, don't change anything in the database. parameters will be displayed in the url

POST #create a new resource - the data won't be displayed in the url

PUT/PATCH #update an existing resource - the data won't be displayed in the url
DELETE #delete a resource

```

For a particular model/resource, for example, 'posts', we would have 7 core actions and 4 views:

```ruby
GET / posts   #index route - getting all the posts
GET /posts/new  #new route - form to create a new post
POST /posts   #create route - use the form's data to create a new post in the database
GET /posts/:id #show route - show a particular post 
GET /posts/:id/edit   #edit route - show a form to edit a particulat post
PUT /posts/:id/edit   #update route - use the form's data to update an existing post in the database (or PATCH depending on the framework)
DELETE /posts/:id #delete route - delete a particular post from the database

```

We are not done DRYing up our code, partials can help us go even further. A partial is just a view, so it's just an erb file that can be rendered in another erb file using the erb method like erb `:view_file`. **However, if you want it to be able to access local variables, you will need to pass them to the (partial) view through the locals hash**. _To render the partial view within a view, you need to use the render tags_

```ruby
<%= erb(:partial_view, locals: {variable_name_in_partial_view: variable_from_current_view} %> 

```

Lecture slides: 

Lecture video: 

If you would like some stretch goals, try to implement likes and comments.

Dawid