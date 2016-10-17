# W6D1: Permissions & Responsive Design

##Today's Objectives
+ Write comment and like forms
+ Use conditional logic around like form(s) for deletion and creation
+ Add comment and like actions
+ Create validations for likes, comments
+ Implement simple responsive css

##Conditional access
+ Part of RESTful routes

##Responsive cahnges
+ We design for mobile first

##Before Filters
+ To force users to be loged in before they can post pictures
+ **Before Filter** code adjustment

```ruby
#previous version
before '/posts/new' do
  redirect '/login' unless logged_in?
end

#adjusted version
before '/posts/new' do
  redirect '/login' unless logged_in?
end

```

##Conditional Access
+ the `halt`-method

```ruby
#in actions.rb | Before
before '/posts/:anything' do
  redirect '/login' unless logged_in?
end

#in actions.rb | After Modified

before '/posts/:anything' do
  if !logged_in?
    @msg = "Stop right here, need to log in first."
    halt(401, erb(:'401')) unless logged_in?
  end
end
```

```html
<!-- in 401.erb | before -->

<h1> haha nice try!</h1>

<!-- in 401.rb | after -->
<h1> <%= @msg %> </h1>

```

## CSS Media Queries & Bootstrap
+ Show media queries
+ Class prefix | Bootstrap website

```css
  @media(max-width: 768px) {
    main {
      background-color: yellow;
    }
    .photo img{
      display: none;
    }
  }
```










