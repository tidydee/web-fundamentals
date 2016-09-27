#W3D1 Lecture Notes

##Today's Topics
+ 
+ 
+ 


## Today's Objective
+ Combine our Ruby and HTML knowledge
+ Introduction to Embedded Ruby (ERB)
+ Instance variables
+ Looping


##Class Prep Notes per slides

###Aligator Tags
+ Now we see our Hash Data in the view, cause we converted the data to a string
+ We use the ERB method, by passing the name of the View at the end of our NameSpace: 
```ruby
get '/' do  
...

erb(:index)
end
```
+ Give some basic Ruby in the view demo
+ Use aligator Tags, <% name = "Dawid"%>, <h1><%= name %></h2>