# W6D2 Class Prep Notes - Lecture - Part I

1. A quick review of all the different pieces of the application we've just built, including the following technologies:
  + HTML and CSS
  + Ruby
  + ActiveRecord
  + ERB
  + Sinatra
  + RubyGems
  + Bundler
  + HTTP
  + SQL databases (SQLite3)
2. Deploying (Publishing) your App (Intro to Heroku)
3. What about JavaScript? (A brief intro to the language)


## Basic Javascript Demo:

```html
<img id="preview" style="display: none; max-width: 200px" src="">

<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
    $(document).ready(function() {
        $("#photo_url").on("blur", function(event) {
            var photo_url = $(this).val();
            var preview = $("#preview");
            if (photo_url) {
                preview.attr("src", photo_url)
                preview.show();
            } else {
                preview.hide();
            }
        });
    });
</script>

```

## Heroku Deploy

```ruby
  Add Gems
  # A sample Gemfile
  source "https://rubygems.org"

  gem 'rake'
  gem 'activesupport'

  gem 'sinatra'
  gem 'sinatra-contrib'
  gem 'sinatra-activerecord'

  gem 'puma'
  gem 'tux'
  gem 'pry'

  group :development, :test do
    gem 'shotgun'
    gem 'sqlite3'
  end

  group :production do 
    gem 'rails_12factor'
    gem 'pg'
  end
```

## Update Database Config
```ruby   
  if Sinatra::Application.development?
    set :database, {
      adapter: "sqlite3",
      database: "db/db.sqlite3"
    }
  else
    db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
    set :database, {
      adapter: "postgresql",
      host: db.host,
      username: db.user,
      password: db.password,
      database: db.path[1..-1],
      encoding: 'utf8'
    }
  end

```
## Push to Heroku

```bash
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku login
heroku create
git push heroku
heroku run bundle exec rake db:migrate
Visit URL shown after push to Heroku

```

# Slide Notes

```html
// in js folder in public folder; might have to create
// in the layout.erb folder
// in <script> tag at the bottom of the <body>, before </body>
  <script src="/js/main.js"></script>
```

## URL: https://code.jquery.com

```html
<script   src="http://code.jquery.com/jquery-3.1.1.js"   integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="   crossorigin="anonymous"></script>
```

```html
<!--************* new.erb ************-->

<img src="" id="preview-image.js">
```

```javascript
  //in main.js

  $(function(){
    //alert("Hello!");
    
    //grab image
    //get text field value
    //text field value as the src attribute for the image
    
    var previewImage = $('#preview-image')
    var photoUrlInput = $('#photo_url')
    
    // this is for the Post/new Page Inpute field
    photoUrlInput.on('blur', function () {
      console.log(photoUrlInput.val()); //1
      previewImage.attr('src', photoUrlInput.val()); //2
    });

  });

```

## Deploying our App to Heroku

## Update Database Config
+ First have to make changes to our **Gem File**
  
```ruby
  # In gem file | CURRENT - needs change!
  group :production do 
    gem 'rails_12factor'
    gem 'pg'
  end

  # Also add Pry Gem to the Whole App in Gem File, not just to Dev Environment

```

```ruby
  # In database.rb


  if Sinatra::Application.development?
    set :database, {
      adapter: "sqlite3",
      database: "db/db.sqlite3"
    }
  else
    db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
    set :database, {
      adapter: "postgresql",
      host: db.host,
      username: db.user,
      password: db.password,
      database: db.path[1..-1],
      encoding: 'utf8'
    }
  end

```


### git commit -m"Ready for Heroku"

##Need to install the Heroku ToolBelt First

```bash
  wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
  heroku login
  heroku create
  git push heroku
  heroku run bundle exec rake db:migrate
  Visit URL shown after push to Heroku

```

```bash
  git remote set-url heroku [insert URL that is given to us]

  git push heroku master
  <!-- Expect An Error  -->
  bundle install
  git status
  git add Gemfile.lock
  git commit -m"Adding Gemfile.lock"
  git push heroku master

```

```bash
  heroku run bundle exec rake db:migrate
  Visit URL shown after push to Heroku

```

