Subject: More ActiveRecord: queries and relationshipsAugust 
-----------------------------------------------------------

Hi Everyone,

Today we talked about `Classes` and `Objects`. We can create our own classes which define a blueprint to build a particular object; an instance of the class, which has some properties/attributes (name, color etc...) and functionality, i.e. methods the object can call. We talked about inheritance which is a way to give a class the same functionality as another class. As an example, our Finstagram models inherit from the `ActiveRecord::Base` class which gives them class methods like:

```ruby
  .new, .create
  .find, find_by, .where
  .count
  .all
```

As well as some instance methods that can be called on a particular user or post object:

```ruby
  .update
  .destroy
  .save
```

We talked about relationships between tables and how a row in a particular table can connect to another in another table. `ActiveRecord` gives us some nice helper to represent those relationships, **`has_many`**, **`belongs_to`**, **`has_one`**.

A post belongs to a user and a user has many posts:

```ruby
  class Post < ActiveRecord::Base
      belongs_to :user
      # a post has been written by one user only
  end

  class User < ActiveRecord::Base
      has_many :posts
      # a user may have written several posts
  end
```

The use of the uncapitalized model name pluralized or not is important. `ActiveRecord` will then give us methods to access a post's user and a user's posts.

```ruby
  #get all the posts of user with id 1
  user = User.find(1)
  posts = user.posts
  # we are looking for all the posts where user_id is equal to 1
  # and could get to the same result with
  # posts = Post.where({user_id: 1})
  # but now that we have set up the relationships, Active Record gives us
  # a short method to do the same thing

  #get the user of the first post created
  post = Post.first
  user = post.user
```

**Lecture video**: https://drive.google.com/open?id=0BxH5VCrHXZ9JV2liSXozX3hDdGc

**Lecture slides**: https://drive.google.com/open?id=1-fvTzbD7iuYAV3ROkL71ZatYzPlixGK_FW1Il08Jsa4

**ActiveRecord Documentation**: http://guides.rubyonrails.org/active_record_basics.html

**ActiveRecord Associations**: http://guides.rubyonrails.org/association_basics.html

Dawid