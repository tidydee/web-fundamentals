Hi Everyone,

Today we talked about databases and how using one in our project would actually make our web app dynamic. During the last class, we made our view more dynamic as it became a template but our data was still very static; we would need to modify the code in our `actions.rb` file to `edit/create/delete` our data.

Using a database would make our data persistant and in our actions file, we would just be pulling the data from the database.

We will be using a relational database which comprises several tables, one for which each type of data so in our case, we would have 4 tables: users, posts, comments and likes.

+ Each row in a table represents one object/item in our table (one post in the posts table).

+ Each column represents one piece of data or a property of an object: the `user_id` of the user who wrote the post, the text/content of a post...

Our database is relational as a row in one table can refer to another row in another table. We can separate the concerns, the post doesn't need to store the `username` and the `avatar_url` of the user who wrote it, it just needs to keep a reference to a **user** in the **users table**. For this reason, in the posts table, each post has a user_id value which refers to the id column in the users table.

We can use **SQL** (Structured Query Language) to communicate with the database or, in our case, we will be using an **ORM** (Object Relational Mapper) called **ActiveRecord**. We will still be writing Ruby code and ActiveRecord will do all the hard and verbose SQL work, giving us from the database an object that is kind of a hash but not quite the same. We will also be provided with some easy methods to do **CRUD** (Create, Read, Update, Delete) operations on our data.


**CREATE**

```ruby
user = User.create({username: "user1", email: "user1@test.com"})
or user = User.new
```

**READ**

```ruby
users = User.all # get all the users in the users table
user = User.find(1) # find user with id 1
```

**UPDATE**

```ruby
user = User.find(1)
user.update({username: "new_username"})
```

**DELETE**

```ruby
user = User.find(1)
user.destroy
```

We talked about the **MVC** architecture pattern which stands for Model, View, Controller. In this pattern, we separate the concerns: * the model is "the link" to the database * the view just renders data, it doesn't need to know where it is coming from * the controller (our actions.rb file) request the data from the model and passes it to the view.

The first thing we have to do is define the structure of our database (the tables and the columns/fields in each table) using a migration. The migration file already exists and is in the `db/migrate` folder. We then run `bundle exec rake db:migrate` which will execute the code in the migration file, create the database file `db/db.sqlite3` (we are using a sqlite3 database) and `db/schema.rb` which is the database schema which represents the different tables (with their columns and their datatypes) the database has, as well as the relationships between these tables.

To be able to use ActiveRecord's CRUD methods, we need to create a model class for each table that inherits from ActiveRecord. By convention in Sinatra, the models should be in the the folder `app/models`. To create the model representing posts, we will create a file `post.rb` in that folder.

```ruby
class Post < ActiveRecord::Base
end
```

`< ActiveRecord::Base` means that the Post model inherits all the functionality (i.e. the methods) that `ActiveRecord::Base` has. There is a naming convention to follow here, the table is called `posts` but the model class is capitalized and singular (`Post`) and the file name is not capitalized and singular.

Now that we have our database and our models, we can use **tux** to interact with our data using active record methods. First, to start tux, you need to run `bundle exec tux`.

We will be using more Active Record methods next week but here are some interesting ones:

```ruby
# Grab all the users
User.all
# Find the first user created
User.first
# Find the last user created
User.last
# Find out how many users we have
User.count
# Find the user with id 2
User.find(2) #the id is unique and is assigned by the database so this method will return one user object
```

###ActiveRecord gives us methods to access the properties of our objects:
`user.id, user.username ...`

###Find a user with a particular username (test):

```ruby
User.find_by(username: "test")
#this returns the first item matching the 'requirement'.
```
###Find all the users with a particular username (test):

```ruby
User.where(username: "test")
#the 'where' method, unlike 'find_by', returns an ActiveRecord relation (kind of an array) with all the items matching the 'requirement'
```

###Find all the posts belonging to a particular user using their id:

```ruby
user = User.first - grab the first user
Post.where(user_id : user.id)
```

###Creating a user

```ruby
user = user.new #the user hasn't been inserted into the database yet
user.username = "username"
user.email = "username@email.com"
#set other properties of the user (avatar_url etc...) 
user.save #the user is added to the database and is given an id, created_at and updated_at are set
```

###OR

```ruby
user = User.create({username: "username", email: "username@email.com"})
this automatically inserts the user in the database
#Updating a user, for example the first user created
user = User.first
user.username = "new_username" #the update hasn't been made in the database
user.save #this makes the update in the database
```
###OR

```ruby
user.update(username: "new_username")
#this automatically makes the update in the database
#destroying a user, for example the last user created
user=  User.last
user.destroy #you won't get a warning here!

#methods can be chained
User.last.destroy #will destroy the last user created
User.first.update(username: "new_username") #will update the username of the first user created
```

_**Make sure you familiarize yourself with the active record methods, we will be using them next week**_ _("we won't be using the static post data we created in our `actions.rb` file")_

**ActiveRecord Documentation**: http://guides.rubyonrails.org/active_record_basics.html

**Lecture slides**: https://drive.google.com/open?id=1ziGpeT3fI0VdeWvSQNwEfzM-99I2t-1rsH0sJP9VR-w

**Lecture video**: https://drive.google.com/open?id=0B6jyzd9aAZ5NMVhNSzdBWXBrTEU

**Sqlitebrowser and SQL queries Video** (second lecture): https://drive.google.com/open?id=0B6jyzd9aAZ5NcGVEWWdVa1F5SVk

*ActiveRecord Docs: http://guides.rubyonrails.org/active_record_basics.html


If you are interested in learning more about SQL, these courses seem pretty interesting: 

**CodeSchool SQL Course**: https://www.codeschool.com/courses/try-sql 


You can then appreciate the **ActiveRecord _"magic"_** and you can try to practice with **SQL** queries in the **SQlite browser**.

The first level of this course in about active record https://www.codeschool.com/courses/rails-for-zombies-redux (the second level introduces some concepts we will talk about next week)

I briefly mentioned classes and inheritance; we will be talking about that on Monday if you are interested, you can check this out http://code.tutsplus.com/tutorials/ruby-for-newbies-working-with-classes--net-15938

Active record migrations if you are interested: http://edgeguides.rubyonrails.org/active_record_migrations.html

##Have a fun!

Dawid 