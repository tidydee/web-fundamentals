Subject: Permissions and Responsive 
===================================

Hi Everyone,

Today we talked about permissions and responsive design. Permissions are a way for us to control what a user can see on our site, we probably don't want a user who's not logged in to be able to see all of our pages.

We looked into before filters which would run before the corresponding action runs. As an example, we only want logged in users to be able to get to the page with the form to create a new post /posts/new

```ruby
before '/posts/new' do
    redirect '/login' is current_user.nil?
end

```

We also talked about **HTTP** response codes. When everything is fine, the response code is going to be `200` but when the user makes a bad request and is trying to access a page that doesn't exist or that they are not authorized to see, the response code would be `404` or `401`. We can change the status code of our responses and for example, return a custom 401 page when a user is trying to create a new post before logging in.

```ruby
# in actions.rb

before '/posts/new' do
    if !logged_in?
        @error= "stop right there!"
        halt(401, erb(:'401'))
    end
end

```

```html
in 401.erb

<h2><%= @error %></h2>

```

We also talked about responsive design and how important it is to make sure that our app can be used on any device. Since most people use their phone, it is important to design for mobile first and then add more (images, adds etc..) for larger screens. To adjust our CSS declarations based on the screen size, we use media queries:

```ruby
@media (max-width: 600px){
    .photo {
        display: none;
    }
}

```

Here, we want to hide the element (probably a picture) with the class `photo` when the browser's width is 600px or less.

**Lecture slides**: https://drive.google.com/open?id=1GrfYgkod9Y-mm1Hld-F5lzmumBTPWTBKZtsPg_cwTbk

**Lecture video**: https://drive.google.com/open?id=0B6jyzd9aAZ5NSmdkcGxxYW8xX0k

**Class Tut Breakout**: https://drive.google.com/open?id=0B6jyzd9aAZ5NRF9rMzVhZzN1TGM 

In the tutorial, you will implement comments and likes. If you want an extra challenge, try to give the ability to a user to edit a post they created. You will need to create a form to which a user could get to from a button or a link. You will need another action to receive and process the form's data. You could also practise with before filters and make sure a user cannot access the edit form of a post they didn't create.

See you on Wednesday!

Dawid