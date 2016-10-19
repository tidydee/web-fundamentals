The endSeptember 9th 2016
Van 02 Aug 2016

The past 6 weeks flew by so quickly! You learned about HTML, CSS, Ruby, Sinatra, databases etc... Today we talked about some fun things with can do with Javascript and how to deploy our app to Heroku after making some changes to your Gemfile file and the database.rb file in the config folder. If at some point you get an error related to 'pry', remove the line "require 'pry'" in environment.rb (config folder).

**Deployment instructions**: https://gist.github.com/tidydee/81c937adc3b3a7ca5e49ae6e99fb246d

Previewing the post's image before creating the post:

+ Create a folder called javascript in the public folder and create this file https://gist.github.com/tidydee/f9836a6e4a8d09ae95205139d7b02f0d in that folder
+ Modify your layout.erb file to load jquery and your javascript file.

```html
in your layout.erb file

...
</header>
        <main role="main">
            <%= yield %>
        </main>
        <!--YOU NEED TO ADD THE 2 LINES BELOW -->
        <script  src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="/javascript/preview-image.js"></script>
    </body>
...

```

We also had a discussion about what the next steps could be after you finish building your version of Finstragram. You could add more interactivity using Javascript. You could also have a profile page for each user that could be editable. You could try to upload images when creating a post instead of using a picture from another website.

This course introduced you to all the important concepts for creating an app. Find yourself another project to keep practising and if you want to discover another framework, we saw that there are a lot of options, in particular Ruby on Rails would be a nice one to play with if you don't want to learn another language.

Lecture slides: Part 1: https://drive.google.com/open?id=1xXmckQjaOtENjZFeYE_c0riTZufWcgulJnhQ75e1MZg

Lecture Part 2: https://drive.google.com/open?id=17hOBuu91r5vP4xwGR_oHKUYJbThoxRO96vnFETJ5Gyg

Lecture video: 

**Some interesting links**:

+ https://www.codecademy.com/ checkout the HTML, CSS, Javascript, Ruby, Rails sections
+ https://www.codeschool.com/courses/try-git Introduction to using Git
+ https://www.codeschool.com/courses/try-jquery introduction to jQuery
+ https://www.codeschool.com/courses/try-ruby Introduction to Ruby
+ http://learnrubythehardway.org/book/ more Ruby
+ https://www.codeschool.com/courses/rails-for-zombies-redux intro to Rails and Active Record
+ http://www.sinatrarb.com/ Sinatra reference

It's been great meeting you and teaching you, keep coding otherwise you'll forget. Remember that reading the error messages is key, Google is your best friend although I'll be happy to help over Slack of course (I'm @dspamer)!

Take Care,

Dawid