Hi Everyone,

Today we talked about forms and validation. Our views more dynamic and our data is now pulled from a database but the user can't do much on our app apart from getting a list of all the posts that we had to create using tux. It would be nice if the user could create an account, like a post, create a new post, comment on a post etc...

To do so, we will need a form on the front end to be able to collect a user's data and we will need to make some changes on the backend and create a new route (or a new action) where the form data will be received and processed.

A form element has 2 important attributes, action and method. Action will correspond to a route (or an action) in our actions.rb ('/signup') and the method will correspond to a HTTP verb, get or post.

# get: used to read or search, not to make changes in the app. The query parameters will be displayed in the url.
# post: used to create data (sign up, submit a new post...), the form data will not appear in the url
We can access the value of all the input fields submitted in the form through a hash called 'params' in the Sinatra backend (actions.rb).


# in our user.rb file, we added some validation
# in our signup.erb file

```html
    <form method="POST" action="/signup">
        <label for="username">Username</label>
        <input type="text" name="username" id="username" />
        <label for="email">Email</label>
        <input type="email" name="email" id="email" />
        <label for="password">password</label>
        <input type="password" name="password" id="password" />
        <input type="submit" value="Submit" />
    </form>
```

# in our actions.rb file, we can process our form data

```ruby
    post '/signup' do
        submitted_username = params[:username]
        submitted_email = params[:email]
        submitted_password = params[:password]
        @user = User.new({username:submitted_username, password: submitted_password, email: submitted_email})

        #we have set up some validations in our user model and depending on whether
        #the user is valid or not, we can redirect to different pages
         if @user.save
            puts "New user created!"
            erb(:welcome)
         else
            erb(:signup)
         end

    end
```

Before saving any user input in our database, we need to make sure that it's valid; i.e matches our criteria. ActiveRecord gives us some nice helpers to do validations:

```ruby
    class User < ActiveRecord::Base

        # your associations here

        validates :username, :email, presence: true
        validates :email, uniqueness: true
    end
```

Validations are specified using the keyword validates, followed by the name of the properpty we want to validate as a symbol (i.e prepended with a : so for example :username) and then followed by the condition that should be true for the validation to pass. Validations will be run before the create and update methods run when we try to create a new entry or update an existing one in the database.

You can also call the .valid? method to check if your object is valid (this method is inherited from ActiveRecord) before saving it:

```ruby
    new_user = User.new({username: "test")}
    if new_user.valid?  # should return false based on the validations above
        new_user.save
    else
        "this user is not valid"
    end
```

The are different types of validations; a range for a number, number of characters in a string etc... More validation options here: http://guides.rubyonrails.org/active_record_validations.html

**Lecture video**: https://drive.google.com/open?id=0BxH5VCrHXZ9JQjR4SEhyXzExMHM

**Lecture slides**: https://drive.google.com/open?id=1GZR8luxpEKymNofF8zn9Ue9zQrpE8H-5oseOJiQyXG0

**Different types of input fields**: http://html5doctor.com/html5-forms-input-types/ http://www.w3schools.com/html/html_form_input_types.asp

You can practice using other input types like checkboxes, radio buttons etc... Would you know how to create a form to upload a file? You can try to create a form that enables users to create a new post

See you next week!

Dawid