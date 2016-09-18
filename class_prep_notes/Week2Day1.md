Week2 Day1
==========

###To share after class:
1. Slides
2. Code that we wrote together
3. Video

###Class Topics:
1. CSS Basics
2. Selectors
3. Properties
  

###Today’s objectives:
1. explain lib css files from step/1
2. learn CSS basics
  - selectors
  - properties
  - cascade order
3. apply basics to augment lib.css with own stylesheet (app.css)


#1st Class Lecture Notes per slides

##Overrideing browser defaults
+ Basic idea is to overwrite the browser defualt styling.
+ Do you remeber any browser defualt styles?
+ We overwrite/write styles using CSS

##Linking our CSS
+ First thing to do is to link our CSS Sheet to the browser through our page.
+ We link our style sheet in the <head>
+ Browser is going to read the page from top to bottom
+ HTML is for Structure
+ CSS is for styling
+ Talk about the anatomy of the <link rel="stylesheet" href:"../../file_name.css"> tag

###Do Code Demo
+ Continue with lecture demo page - "self made"
+ Link a CSS sheet, name it something like: main.css
+ Add some styling to change some styling on page
+ Explain a App's basic directory
+ Explain Root ~, and Tree hierarchy like branches of a tree
  ..* Show example by linking a CSS file into my HTML <HEAD>

##Basics of CSS
###What are we going to put in our style sheets?
+ selector {property: value;} = Which elements we want to target

##Only select what you want
+ By Tag / Element
  ..* a { ... }
  ..* p { ... }
+ Nested Tags / Elements
  ..* nav a { ... }
  ..* nav ul li { ... }
+ Walking the DOM
..* The act of selecting specific nested elements.

###Do Code Demo
+ show how we target tags
+ show how we target nested tags
+ show how we can write 2 different styles for the same tag/element, and how the last writen css property will overwrite the previous as the CSS parser reads from top to bottom.

##Getting more specific
+ By class
  ..* Can be used as many times as you like throughout your HTML Doc
  ..* CLASS is to describe a grouping - CAN BE USED MANY TIMES!
+ By ID
  ..* Can only be used once in a HTML Doc
  ..* ID is very Specific - CAN ONLY EXITS ONCE!

##Which takes presedence - "CSS Spesificity"
+ Single Element, i.e. <p> = 1 pt
+ Class, i.e. <p class="main"> = 10 pts
+ ID, i.e. <p id="time-now"> = 100 pts

##What can you change?
+ Short answer = EVERYTHING!

##Text/Font properties
```css
a{
  color: #AA3939;
  text-decoration: none;
  font-weight: Bold;
  font-size: 18px;
  font-family: Arial, sans-serif;
}
```
+ Much Much More!

## Borders, Margins, Padding - "Spacing"

###Give demo for Border, Margin, Padding
+ Demo could be in Chrome Dev Tools

```css
img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
}
```

#THE END! 
#ANY QUESTIONS?


#2nd Class Lecture Notes per Tutorial work - "Code Breakout"

##classes
##IDs
##Pseudo classes, i.e. hover state, focus state, unvisited state, visted state
+ Let's Google CSS Pseudo-Clases and see what we get...

```css
img:hover {
  height: 200px;
}
```
## First Child Pseudo Class
```css
p:first-child {
  font-size: 40px;
}
```

## Nth Child Pseudo Class
```css
p:nth-child(2) {
  font-size: 20px;
  color: blue;
}
```

```css
p:nth-child(even) {
  font-size: 10px;
  color: gtreen;
}
```

##Transitions in CSS
```css
img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
  transition: height 3s;
}
```
```css
img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
  transition: height 3s, width 6s;
}
```
```css
img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
  transition: height 3s, ease-in 4s;
}
```

```css
div img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
  transition: height 3s, ease-in 4s;
}
```
## Google CSS Transforms

```css
div p {
  color: green;
  transition: transform 3s;
}

div p:hover {
  transform: scale(2);
}
```

```css
img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
  transition: height 3s, ease-in 4s;
}

img:hover {
  //height:200px
  *height:200px
  transform: rotate(90deg);
}

img {
  margin: 20px;
  border-radius: 10px;
  border 2px solid red;
  padding: 20px 10px 20px 10px;
  padding-top: 40px;
  transition: transform 4s, height 4s;
}
```








