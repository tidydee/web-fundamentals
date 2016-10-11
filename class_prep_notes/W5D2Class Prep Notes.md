##W5D1-RESTful Routes & Partials::Class Prep Notes

##Today's Objectives
+ create view for new post form
+ add actions and for creating posts
+ add action and view to show individual post
+ understand and implement **REST**ful routing
+ validate `Post`
+ implement partials to avoid code duplication

#Slides

##RESTful ROutes

###Index

```ruby
  #index
  get '/posts' do
    @posts = Post.all
    erb(:"/post/index)
  end
```

###New

```ruby
  #new
  get '/posts/new' do
    @post = Post.new
    erb(:"/post/new")
  end
```

###Create

```ruby
  #create
  post '/posts' do
    text = params[:text]
    @post = Post.new({text: text})
    if @post.save
      redirect "/posts/#{@post.id}"
    else
      erb(:post_new)
    end
  end
```

###Show

```ruby
  get '/posts/:id' do
    id = params[:id]
    @post = Post.find_by({id: id})
    erb(:"/post/show")
  end
```

###edit

```ruby
  get '/posts/:id/edit' do
    id = params[:id]
    @post = Post.find_by({id: id})
    erb(:"/post/edt")
  end

  put '/post/:id/edit' do
    id = params[:id]
    text = params[:text]
    @post = Post.find_by({id: id})
    @post.text = text
    if post.save
      redirect "posts/#{@post.id}"
    else
      erb(:"/post/edt")
    end
  end

```
###Delete

```ruby
  delete '/posts/:id' do
    id params[:id]
    @post = Post.find_by({id: id})
    if post.destroy
      redirect '/posts'
    else
      redirect "/posts/#{@post.id}"
    end
  end

```

##DRYing up views with Partials


```html
```

```ruby
```
