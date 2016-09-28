#W3D2 - Class Prep Notes

##Today's Objectives
+ Learn relational database basics
+ Learn ActiveRecord = ORM Basics
+ Create a Post in the DB

##Today's Time Schedule:
+ **Class Lecture**               : 18:00 to 19:00
+ **BREAK**                       : SHORT!
+ **Boot up Cloud9 VM**           : SHORT!
+ **Intro DB & ActiveRecord Tut** : 19:15 - 20:20
+ **Tutorial Review**             : 20:20 to 20:40
+ **Tutorial Review**             : 20:20 to 20:40

#Notes per slide

##What is a Relational Database
+ Forms certain relations between data
+ Language used to query a DB is SQL
+ We will using ActiveRecord - a ORM (Object Relational Mapper)

##What does data look like?
+ Very much like Excel!
+ Normalization is a big part of creatig database
  ..* The act of reducing redundency in data
  ..* We use Primary Keys & Foreign Keys
+ Differnt Tables, i.e. Users, Posts | Think about the relationship between differnt data...
  ..* User can have many Posts
  ..* Post can only have one User

##How is Finstagram organized?
+ Users
+ Posts
+ Comments: User can have many comments, Comments can have one User
+ Likes: User_ID, Post_ID, Like_ID

##Why is it "Relational"?
+ Rows in particular Table can relate to a Row in another particular table

##How do we talk to the DB?
+ In Ruby, we use ActiveRecord - ORM

##Enter ActiveRecord
+ ActiveRecord is a Ruby Gem itself
+ ActiveRecord is from the Ruby on Rails framework
+ ActiveRecord allows us to CRUD

##Creating some data
+ In ActiveRecord we have a Model
 ..* i.e. User, Post, etc
+ Users Model allows us to interact with the Users Table in our DB

#Database Code Demo

##DB/MIGRATE Folder in Sinatra
+ Our DB Structure has already been created for us
+ We need to still run a command that will create this DB structure for us
+ When in DEV Mode, we use a Local DB

##Create DB
```bash
bundle exec rake db:migrate
```

+ In our DB structure we don;t see the UUID, but our DB will create this for us!
+ MVC - Model | View | Controller

##Create Model called Post
+ We want to be able to interact with our Post table
+ Create Post Model, `post.rb`
+ Create a Class; make it inheret from `ActiveRecord::Base`

```ruby
class Post < ActiveRecord::Base
end
```

#Tux
+ We want to interact to our App DB from the Terminal for testing...
+ Run:

```bash
 bundle exec tuc
```

+ All posts in post table:

```ruby
Post.all
```

+ See first row in table:

```ruby
Post.first
```

+ See last row in table:

```ruby
Post.last
```

+ Find post in table:

```ruby
Post.find(1)
```

+ Assign fist_post to a variable:

```ruby
first_post = Post.first
first_post => "Post.first"

first_ post.user_id => "1"
first_ post.photo_url => "www.photo.com/image/1/image.jpg"

first_ post.user_id = 2
=> 2

first_post.save
```

## Create a POST

```ruby
Post.create({user_id:1, photo_url: "www.photo.com/image/1/image.jpg"})
```

#ActiveRecord Methods & SQL Code DEMO

```bash
bundle exec tux
```

```ruby
User.all
```

```sql
SELECT *
FROM Users
ORDER BY Asc
```

## SQL DEMO with DB Browser for SQL lite - Teacher Notes
+ Use the App to explore the db with the class, but this time using SQL (an example progression is given below)

+Then consider going in this order:

1. Introduce a very simple `SELECT` query returning `user_id, text` from the comments table.

2. Introduce `ORDER BY text ASC` and ask them to volunteer how would change it to descending.

  ..* Good time to mention how SQL was originally created for data analysts and therefore it's very declarative and english like.

3. Introduce a `WHERE` to filter down to comments by `user_id=1`

4. Okay but what if we want to show data on a webpage with the user's username and the their comment. Data is in two separate tables!
  ..* Introduce a JOIN by doing `comments JOIN users ON comments.user_id = users.id` so that you can return not only the text but also hte username (in the users table)

```sql
  SELECT *
  FROM comments JOIN users ON comments.user_id = users.id
```

  ..* Go back to the explorer to show that these are the two integer columns that.
  ..* Don't need to go into INNER vs OUTER imho.

5. If time permits, show aggregate functions so they can relate to how stats can be retrieved from the DB (eg: number of users, number of comments, number of comments by a specific user).
  ..* Avoid going into GROUP BY

###Summarize:

+ SQL can get complicated, even though it's syntax looks easy at first (Multiple joins, nested queries etc).

+ ORMs like ActiveRecord make it easy so we just write in our "web" language and also is more designed for CRUD.

+ That said, for complex reports (high level numbers, dashboards, etc) devs still generally resort to executing the SQL directly since AR's convenience takes away advanced control over SQL.












