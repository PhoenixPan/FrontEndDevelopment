# CSS Basic

##### Limit the application of class. In this case, only <**span**> within <**p**> will be affected.   
```
p.tip span {
  font-weight:bold;
  color:#ff9955;
}
```

## Ways to apply CSS
1. External (preferred): refer in head tag: <**link rel="stylesheet" type="text/css" href="mystyle.css"**>;  
2. Internal: use <**style**>;  
3. Inline: <**h1 style="color:blue;"**>;  

## priority
There are multiple style sheets & override priority.  
1. The one that is more specific wins: child element > parent element
```
/*Priority from low to high*/
body {
  color: red
}

#proirity_test {
	border: 1px solid #0040FF;
	color: purple;
}

#proirity_test ul {
	border: 1px solid #6040FF;
	color: blue;
}

#proirity_test ul li:nth-of-type(3) {
	border: 1px solid #004022;
	color: green;
}
```

2. !important(pink) > inline style(white) > id(orange) > external(css)> class on bottom(blue) > class on top(green)  
PS: external reference has lower priority than !impotant and inline, but could be higher than others depending on where it is.  
```
<style>
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink !important;
  }
  
  .green-text {
    color: blue;
  }
  
  .blue-text {
    color: blue;
  }
  
</style>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<h1 id="orange-text" class="pink-text green-text blue-text" style = "color:white">Hello World!</h1>
```

Specificity: https://developer.mozilla.org/en/docs/Web/CSS/Specificity

## Color
1. Default: color: red; such as red, gold, black. Check all of them here: http://colours.neilorangepeel.com/
2. Hexadecimal: color: #000000; The first two digits stand for red #FF0000, the next two for green #00FF00, the last two for blue #0000FF
3. RGB: color: rgb(0,0,0); The first value stands for red rgb(255,0,0) , the next one green rgb(0,255,0), the last one for blue rgb(0,0,255)
4. RGBA: color: rgba(0,0,0,0); The last channel is used to set transparency level from 0 to 1


## Background
### Image
```
body {
  background-image: url("gradient_bg.png");
    
  /*Rules for repeating image*/
  background-repeat: repeat; /*default*/
  background-repeat: repeat-x;
  background-repeat: repeat-y;
  background-repeat: no-repeat;
  
  /*Stretch the image to fit the screen*/
  background-size: cover;
  
  background-position: right top;
  background-attachment: fixed; /*image will not move as you scroll*/
  
  /*Shorthand property in order: color, image, repeat, attachment, position*/
  background: pink url("img_tree.png") no-repeat fixed right top; 
}
```

## Border 
Mainly consists of three attributes: width, color, and style:  
```
h1 {
    border-width: 5px;
    border-style: solid;
    border-color: black transparent transparent transparent;
}
```
Or shorthand:  
```
h1 {
    border: 5px solid red;
}
```
Border actually consists of four triangles or trapezoid facing a center point. To generate a tringle:  
```
.trinangle {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;

    border-width: 5px;
    border-style: solid;
    border-color: black transparent transparent transparent;
}
```

Ways to set width
```
border-width: medium;
border-width: 2px;
border-width: 1px 2px 3px 4px;
```

Round cornor
```
border-radius:5px;
```

All border styles
```
border-style: dotted;
border-style: dashed;
border-style: solid;
border-style: double;
border-style: groove;
border-style: ridge;
border-style: inset;
border-style: outset;
border-style: none;
border-style: hidden;
border-style: dotted dashed solid double;

border-top-style: dotted;
border-right-style: solid;
border-bottom-style: dotted;
border-left-style: solid;
```

## Selector

```
<style>

  /*Element selector*/
  h1 {
    background-color:blue;
  }
  
  /*ID selector*/
  #id-selector {
    background-color:green;
  }
  
  /*Class selector*/
  .class-selector {
    background-color: red;
  }

  /*Attribute-based*/
  input[type="text"] {
    background: grey;
  }
  
  /*Star: all elements*/
  #id-selector * {
    margin: 0;
    padding: 0;
  }

  /*input:checked*/
  /*a:visited*/

  /*X + Y: only the Ys immediately follow X*/ 
  /*X Y: all Y within X*/
  /*X > Y: only direct descendant Y of X*
  
  /*X:nth-of-type(n)*/
  div:nth-of-type(3) p {
    font-size:25px;
  }
  /*X:nth-last-of-type(n)*/
  /*X:only-of-type*/
  /*X:first-of-type*/
  
  /*X:first-child*/
  /*X:last-child*/
  /*X:nth-last-child(n)*/
  /*X:only-child*/
  /*X:nth-child(n)*/
  
  /*before and after: https://css-tricks.com/almanac/selectors/a/after-and-before/*/
  
  /*X:not(selector): except*/
  div:not(#div-i-dont-want) {
    color: blue;
  }
  
</style>

<p id="id-selector">ID selector: Green</p>
<p class="class-selector">ID selector: Red</p>

/*Multiple classes*/ 
<p class="class1 class2">ID selector: Red</p>
```
The 30 CSS Selectors You Must Memorize: https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048  

## Box model: Positioning of CSS
![boxmodel](https://cloud.githubusercontent.com/assets/14355257/18029725/1e3362f2-6c6e-11e6-8484-af0b88e33bc2.jpg)    
1. Total element width = width + left padding + right padding + left border + right border + left margin + right margin  
2. Total element height = height + top padding + bottom padding + top border + bottom border + top margin + bottom margin  
3. Internet Explorer 8 and earlier versions, include padding and border in the width property. To fix this problem, add a <!DOCTYPE html> to the HTML page.  

## Margin
```
// Prefix
margin:50px 25px 50px 25px;  // top, right, bottom, left
margin:50px 25px 50px;       // top, left and right, bottom
margin:50px 25px;            // top and bottom, left and right
margin-top
margin-right
margin-bottom
margin-left

// Postfix
auto    // margin:auto; align center
length: px, pt, cm, etc.
%
inherit: inherit from the parent
```
1. Top and bottom margins sometimes collapse into one single margin, which is the larger value of the two.  
2. Left and right margin won't collapse.   
3. margin:auto: make it center, for image, also make it a block element.  


## Padding
```
// Prefix
padding:50px 25px 50px 25px;  // top, right, bottom, left
padding:50px 25px 50px;       // top, left and right, bottom
padding:50px 25px;            // top and bottom, left and right
padding-top
padding-right
padding-bottom
padding-left

// Postfix
length
%
inherit
```

## Height / Width (only the content area)
```
// Prefix
height
max-height
min-height
width       // when the screen becomes small, the view will not shrink to multiple lines to ensure readability
max-width   // unlike with width, it will shrink like default setting
min-width

// Postfix
auto
length
%
```

## Outline
![outline](https://cloud.githubusercontent.com/assets/14355257/18029801/67e9a206-6c70-11e6-9c42-01c07208a1e3.jpg)  
1. The outline is NOT a part of an element's dimensions; the element's total width and height is not affected by the width of the outline.  
2. Declare the outline-style property if you'll apply the outline-color property, no style, no color.  
```
// Prefix
outline	
outline-color:invert // Opposite to the background color	
outline-offset 	//Specifies the space between an outline and the edge or border of an element
outline-style
outline-width

// Shorthand property in order: width style(required) color
outline: 5px dotted red
```

## Text  
```
text-align: justify;        // makes words spread and have the same width in each line
// center, left, right  

text-decoration: none        // removes hyper link underline
// overline, line-through, underline  

text-transform: uppercase    // specifies upper or lower case 
// uppercase, lowercase, capitalize  

text-indent: 50px;
letter-spacing: 3px;       // specifies space between characters in text
word-spacing: 10px;        // specifies space between words in text
line-height: 2;            // specifies space between lines
direction:rtl;             // changes text direction  
white-space: nonrap;        // specifies how white-space inside an element is handled. No new lines  
vertical-align
unicode-bidi
text-shadow: text-shadow:1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;  // multiple: horizental, vertical, blur, color
```
1. For <**div**>, use: box-shadow: 0 4px 8px 0 grey, 0 6px 20px 0 white;  
```
font-style: italic       // normal, italic, obelique 
font-size                // length, em, %
font-variant: small-caps // small-caps or normal
font-weight              // normal, bold, bolder, lighter, initial(default value), inherit, 100-900
font-family: "Times New Roman", Times, serif;\\

// Shorthand property
font:italic bold small-caps 12px/30px Georgia, serif; // style, weight, variant, font-size/line space, font-family

```
## Font
1. Start with the font you want, and end with a generic family;  
2. If the name of a font family is more than one word, it must be in quotation marks, like: "Times New Roman";  
3. "italic" is a special version of font, whereas "oblique" just inclines the font a bit. Since not all fonts have italic version, we use "oblique" to make the font italic when italic version is absent;  
4. If font-size is not specified, the default size is 16px, which is also the default of 1em;
5. 1em is equal to the font size of the parent element;  

## List  
```
list-style-type:none  // circle, square, lower-roman, lower-alpha. more: http://www.w3schools.com/cssref/pr_list-style-type.asp
list-style-image: url('sqpurple.gif');
list-style-position: inside; // outside, marker is inside or outside of the content flow  

// Shorthand property in order: type, position, image
list-style: square inside url("sqpurple.gif");
```
1. Modify last child, as sometimes it overlaps with the bottom border of the list;  
```
ul li:last-child {border-bottom: none;}
```

## Table  
```
// Collapse to single border(only in table)
table {
  border-collapse:collapse;
}

// Height & Width
table {
  width:100%;  // unit could be %, em, px, ...
  height:50px;  
}
th, td {
  width:100%;    // uneven distribution: |      1      |  2  |3|
  height:50px;
}
tr {
  // no width
  height:50px; 
}

// Striped tables
tr:nth-child(even) {background-color: grey}
tr:nth-child(odd) {background-color: white}

// Responsive tables: automatically add a scroll bar to the section when the screen is too small
<div style="overflow-x:auto;">
<table>
//... table content ...
</table>
</div>
```

## Display  
1. display:block;  A block-level element always starts on a new line and takes up the full width available;  
2. display:inline; An inline element does not start on a new line and only takes up as much width as necessary;  
3. display:none;   commonly used with JavaScript to hide and show elements;  
4. "display:none" does not take up any space, whereas "visibility:hidden" does;  


##Position  
#####static: default value. Not affected by top, bottom, left and right properties;    
#####relative: relative to its normal position. Add gap to sides defined and wrap the content;  
```
div.relative {
  position: relative;
  left: 30px;
  border: 3px solid green;
}

// Use this as default container
div.relative {
  position: relative;  
}
```
##### fixed: it always stays in the same place even if the page is scrolled regardless of where you put the statement;  
```
div.fixed {
  position: fixed;
  bottom: 0;
  right: 0;
}

// "Up" and "Down" will stay together while "Fixed" on the lower-right cornor
<p>Up</p>        
<div>Fixed</div>
<p>Down</p>
```
##### absolute: relative to its parent element(except static).However; if an absolute positioned element has no positioned ancestors, it uses the document body, and moves along with page scrolling;  

*Absolute positioned elements are removed from the normal flow, and can overlap elements.  
  
##### Overlapping: an overlapping element has to be positioned(except static). An element with greater stack order is always in front of an element with a lower stack order. If two elements have the same stack, the one declared later will be displayed on the top;  
```
z-index: -1;  // set the stack order of an element
```
##### Chip: can chip only absolutely positioned element
```
img {
    position: absolute;
    clip: rect(0px,60px,200px,0px);
}
```
##### Cursor: change the cursor https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
```
<span style="cursor:help">help</span><br>
```

## Overflow  
```
overflow: visiable;   // default, won't clip, let the content leaks out
overflow: hidden;     // hide additional content(no scroll bar)
overflow: scroll;     // add two scrollbars anyway
overflow: auto;       // add a scrollbar only when necessary
overflow-x: hidden;   // add a scrollbar horizentally, white-space: nowrap;
overflow-y: scroll;   // add a scrollbar vertically
```

## Float  
Example: http://www.w3schools.com/css/tryit.asp?filename=trycss_layout_clearfix  
```
// float:whether or not an element should float
float: left;  // left, right, none, initial, inherit

// clear:  specify a clear property for the element after the floating boxes to
clear: both;  // left, right, both

// overflow: extend the border to include all contents
<div style="overflow: auto"><img class="img2" src="w3css.gif" width="100" height="140">
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum...</div>

// display:inline-block; ~= float + clear (http://www.w3schools.com/css/tryit.asp?filename=trycss_inline-block)
```
  
1. float: left; - use floa t to get block elements to slide next to each other  
2. display: block; - Displaying the links as block elements makes the whole link area clickable (not just the text), and it allows us to specify padding (and height, width, margins, etc. if you want)  
3. padding: 8px; - Since block elements take up the full width available, they cannot float next to each other. Therefore, specify some padding to make them look good  
4. overflow:hidden is added to the ul element to prevent li elements from going outside of the list.  
```
<!DOCTYPE html>
<html>
<head>
<style>
ul.topnav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #dddddd;
}

ul.topnav li {
    float: left;      // all <li> should be on the same row
}

ul.topnav li a {
    display: block;   // <a> should extends to the entire <li>
    padding: 8px;     // padding on <a>, not <li>, otherwise this area is unclickable
}
</style>
</head>
<body>

<ul class="topnav">
  <li><a href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>
</body>
</html>
```
Fixed bar example:
```
body {
  padding:0;
  margin:0;
}
ul.topnav {
  list-style-type:none;
  padding:0;
  margin:0;
  overflow:hidden;
  background: black;
  position:fixed;
  top:0;                       // otherwise there will be a gap. Why?
  width:100%;
}
ul.topnav li {
  float: left;
}
ul.topnav li a {
  text-decoration:none;
  font-family:"Times New Roman";
  color:white;
  display: block;
  padding:8px;
}
ul.topnav li a:hover {
  background:grey;
}
```

## Align  
To center an element or image  
```
margin:auto;
```
Left or right align using position or float. When aligning elements with position and float, always define margin and padding for the <**body**> element. This is to avoid visual differences in different browsers. Absolute positioned elements are removed from the normal flow, and can overlap elements, whereas float cannot;  
```
body {
    margin: 0;
    padding: 0;
}

.right {
    position: absolute;
    right: 0px;
}

.right {
    float: right;
}
```
To center vertically, use padding:  
or setting line-height equal to height: http://www.w3schools.com/css/tryit.asp?filename=trycss_align_line-height
or using transform: http://www.w3schools.com/css/tryit.asp?filename=trycss_align_transform
```
.center {
    padding: 10px 0;
    border: 3px solid green;
}
```

## Use combinators to target an element  
  
Descendant Selector: select all descendants  
```
div p {...;}

<div>
  <p>Paragraph 1 in the div.</p>
  <span><p>Paragraph 2 in the div.</p></span> // will change
</div>
```
Child Selector: select only immediate children  
```
div > p {...;}
<div>
  <p>Paragraph 1 in the div.</p>              // will change
  <p>Paragraph 2 in the div.</p>              // will change
  <span><p>Paragraph 3 in the div.</p></span> // will not change
</div>
```

Adjacent Sibling Selector: have the same parent, immediately following
```
div + p {...;}
<div>
  <p>Paragraph 1 in the div.</p>
  <p>Paragraph 2 in the div.</p>
</div>
<p>Paragraph 3. Not in a div.</p> // only this will change
<p>Paragraph 4. Not in a div.</p>

// More
div + div > p {...;}
<div>
  <p>Paragraph 1 in the div.</p>
</div>
<div>
  <p>Paragraph 2. Not in a div.</p> // only this will change
</div>
```
General Sibling Selector: have the same parent, following
```
div ~ p {...,}
<p>Paragraph 1. Not in a div.</p>
<div>
  <p>Paragraph 2 in the div.</p>
</div>
<p>Paragraph 3. Not in a div.</p>
<p>Paragraph 4. Not in a div.</p>
```

Select all elements  
```
* {font-family: "Arial Black", sans-serif;}
```
Select all elements with a tag  
```
div * {font-family:"Comic Sans MS, cursive;}
```
Select all elements with attribute "alt" whose value is "value"  
```
*[alt~="value"] {...;}
```
Select all elements with the class "testclass"
```
.testclass {...;}
```
Select all elements with the id "testid"
```
#testid {...;}
```

Select elements with certain tag that has the class: <p class="testclass">
```
p.testclass {...;}
```

Select elements with a certain tag that has the id <p id="testid">
```
p#testid{...;}
```

Select elements with a certain tag that has an attribute, including html elements, class, id
```
// elements with this attribute
p[attribute]{...;}            

// elements with a certain value
p[attribute="value"]{...;}

// elements that contain a certain value
p[attribute~="value"]{...;}     // only separate words, "value x" is ok, but ""value-x" and "values" will not work 
p[attribute*="value"]{...;}     // any place

// elements that start with a certain value
p[attribute|="value"]{...;}    // only single word or with "-", "value" and "value-x", not "value x"
p[attribute^="value"]{...;}    // any place

// elements that end with a certain value, no rules, "-value", "_value", "xvalue" will all be ok
p[attribute$="value"]{...;}  
```

Example:  
```
input[type="text"] {
    width: 150px;
    display: block;
    margin-bottom: 10px;
    background-color: yellow;
}

Firstname:<input type="text" name="Name" value="Peter" size="20">
```



Select the children elements whose parent element's parent element has an id of "testid"
#testid ol li {...;}
#testid ul li {...;}
```
<div id="testid">
<ol>
  <li>ElementOne</li>
</ol>
<ul>
  <li>ElementTwo</li>
</ul>
</div>
```

##Pseudo-class
Check all pseudo-classes here: http://www.w3schools.com/css/css_pseudo_classes.asp  
#####Links
```
// unvisited link
a:link {color: red;}

// visited link
a:visited {color: green;}

// mouse over link
a:hover {color: hotpink;}

// Selected link: the moment you click it
a:active {color: blue;}

text-decoration: none;
background-color:red;
```
1. a:hover MUST come after a:link and a:visited in the CSS definition in order to be effective;  
2. a:active MUST come after a:hover in the CSS definition in order to be effective; 

#####hover: to change a child, hover on div will change its child p
```
p {display: none;}

div:hover p {display: block;}

<div>
  <p>Tada! Here I am!</p> // will be displayed
</div>
<p>Tada! Here I am!</p>   // will not be displayed
```
```
div:hover .test{background:blue;}
.test {background:yellow;}

<div>
  <p class="test">Tada! Here I am!</p> // will change color
</div>
<p class="test">Tada! Here I am!</p>   // will not change color
```
#####first-child: matches a specified element that is the first child of another element
```
p:first-child {color: blue;}

<p>This is some text.</p>   // will change
<p>This is some text.</p>
<div>
  <p>This is some text.</p> // will change
  <p>This is some text.</p>
</div>

// More
p:first-child i {color: blue;}

<p>I am a <i>strong</i> person. I am a <i>strong</i> person.</p> // both <i> will change
<p>I am a <i>strong</i> person. I am a <i>strong</i> person.</p>
```

#####p:lang(anything): define special rules for different language  
```
q:lang(en) {
  quotes:"prefix "" postfix";
  background:lightblue;
}

q:lang(cn) {
  quotes:"1""2";
  background:pink;
}

<p>Some text <q lang="en">English</q> Some text.</p>
<p>Some text <q lang="cn">Chinese</q> Some text.</p>
```

#####focus: take actions when the element gains focus   
```
input:focus {background-color: yellow;}
```

## Pseudo elements  
All references: http://www.w3schools.com/css/css_pseudo_elements.asp  
  
1. p::after:	Insert content after every p element  
2. p::before:	Insert content before every p element  
3. p::first-letter:	Selects the first letter of every p element  
4. p::first-line:	Selects the first line of every p element  
5. p::selection:	Selects the portion of an element that is selected by a user  

## Opacity  
Can be used on many element, not only image  
```
// ways to apply opacity
img {
    opacity: 0.5;
    filter: alpha(opacity=50); /* For IE8 and earlier */
    background: rgba(76, 175, 80, 0.3) /* Green background with 30% opacity */
}
```

##Positioning  
1. Position to right: left:100%;
2. Hardcode position: If you increase its padding, also increase the value of the top property to ensure that it stays in the middle
```
.parent {
  position:relative;
  display:inline-block;
  padding:8px;
}

.child {
  position:absolute;
  z-index: 1;
  top:4px;        // vertical center 
  right: 100%; 
}
```
```
.parent {
    position: relative;
    display: inline-block;
}

.child {
    width: 120px;
    border:1px solid black;
    
    position: absolute;
    z-index: 1;
    bottom: 100%;
    left: 50%;
    margin-left: -60px;
}
```



##Image Sprites
Avoid using many images and save bandwidth.   
Example: http://www.w3schools.com/css/tryit.asp?filename=trycss_sprites_nav  
  
1. <img id="home" src="img_trans.gif"> - Only defines a small transparent image because the src attribute cannot be empty. The displayed image will be the background image we specify in CSS;  
2. width: 46px; height: 44px; - Defines the size of the image we want to use;  
3. background: url(img_navsprites.gif) 0 0; - Defines the background image and its position (left 0px, top 0px).  
```
#home {
    width: 46px;
    height: 44px;
    background: url(img_navsprites.gif) 0 0;
}
```
