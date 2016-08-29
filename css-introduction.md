#CSS  


##General  
1. Change the style of the entire page in a leading <**style**> block in <**head**>;  

#####Limit the application of class. In this case, only <**span**> within <**p**> will be affected.   
```
p.tip span {
  font-weight:bold;
  color:#ff9955;
}
```

##Apply CSS
1. External: refer in head tag: <**link rel="stylesheet" type="text/css" href="mystyle.css"**>;  
2. Internal: use <**style**>;  
3. Inline: <**h1 style="color:blue;"**>;  
4. Multiple style sheets & override priority: Use the last read value.    
!important(pink) > inline style(white) > id(orange) > external(css)> bottom of style(blue) > top of style(pink)  
PS: external reference has lower priority than !impotant and inline, but could be higher than others depending on where it is.  
```
<style>
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink !important;
  }
  .blue-text {
    color: blue;
  }
  
</style>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<h1 id="orange-text" class="pink-text blue-text" style = "color:white">Hello World!</h1>
```



##Background Image
```
body {
  background-image: url("gradient_bg.png");
    
  // Rules for repeating image  
  background-repeat: repeat-x;
  background-repeat: no-repeat;
    
  background-position: right top;
  background-attachment: fixed; // image will not move as you scroll
  
  // Shorthand property in order: color, image, repeat, attachment, position
  background: pink url("img_tree.png") no-repeat fixed right top; 
}
```

##Border  
```
// Styles
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
}
// Width
border-width: medium;
border-width: 2px;
border-width: 1px 2px 3px 4px;

// Color
border-color:red;

// Shorthand property in order:width style(required) color
border: 5px solid red;
border-left: 5px solid red;

// Round cornor
border-radius:5px;
```

##Margin
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


##Padding
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

##Height/Width (only the content area)
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

##Box model
![boxmodel](https://cloud.githubusercontent.com/assets/14355257/18029725/1e3362f2-6c6e-11e6-8484-af0b88e33bc2.jpg)  
1. Total element width = width + left padding + right padding + left border + right border + left margin + right margin  
2. Total element height = height + top padding + bottom padding + top border + bottom border + top margin + bottom margin  
3. Internet Explorer 8 and earlier versions, include padding and border in the width property. To fix this problem, add a <!DOCTYPE html> to the HTML page.  

##Outline
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

##Text  
```
text-align: justify;        // makes words spread and have the same width in each line
// center, left, right  

text-decoration:none        // removes hyper link underline
// overline, line-through, underline  

text-transform:uppercase    // specifies upper or lower case 
// uppercase, lowercase, capitalize  

text-indent: 50px;
letter-spacing: 3px;       // specifies space between characters in text
word-spacing: 10px;        // specifies space between words in text
line-height: 2;            // specifies space between lines
direction:rtl;             // changes text direction  
white-space:nonrap;        // specifies how white-space inside an element is handled. No new lines  
vertical-align
unicode-bidi
text-shadow:text-shadow:1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;  // multiple: horizental, vertical, blur, color
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
##Font
1. Start with the font you want, and end with a generic family;  
2. If the name of a font family is more than one word, it must be in quotation marks, like: "Times New Roman";  
3. "italic" is a special version of font, whereas "oblique" just inclines the font a bit. Since not all fonts have italic version, we use "oblique" to make the font italic when italic version is absent;  
4. If font-size is not specified, the default size is 16px;
5. 1em is equal to the current font size, 1em=16px;  
6. 

##List  
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

##Table  
```
// Collapse to single border(only in table)
table {
  border-collapse:collapse;
}

// Height & Width
table {
  width:100%;    // % or length
  height:50px;   // em or length
}
th, td {
  width:100%;    // uneven distribution: |      1      |  2  |3|
  height:50px;   // em or length
}
tr {
  // no width
  height:50px;   // em or length
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

##Display  
1. display:block;  A block-level element always starts on a new line and takes up the full width available;  
2. display:inline; An inline element does not start on a new line and only takes up as much width as necessary;  
3. display:none;   commonly used with JavaScript to hide and show elements;  
4. "display:none" does not take up any space, whereas "visibility:hidden" does;  
5. 

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
#####fixed: it always stays in the same place even if the page is scrolled regardless of where you put the statement;  
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
#####absolute: relative to its parent element(except static).However; if an absolute positioned element has no positioned ancestors, it uses the document body, and moves along with page scrolling;  

*Absolute positioned elements are removed from the normal flow, and can overlap elements.  
  
#####Overlapping: an overlapping element has to be positioned(except static). An element with greater stack order is always in front of an element with a lower stack order. If two elements have the same stack, the one declared later will be displayed on the top;  
```
z-index: -1;  // set the stack order of an element
```
#####Chip: can chip only absolutely positioned element
```
img {
    position: absolute;
    clip: rect(0px,60px,200px,0px);
}
```
#####Cursor: change the cursor https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
```
<span style="cursor:help">help</span><br>
```

##Overflow  
```
overflow: visiable;   // default, won't clip, let the content leaks out
overflow: hidden;     // hide additional content(no scroll bar)
overflow: scroll;     // add two scrollbars anyway
overflow: auto;       // add a scrollbar only when necessary
overflow-x: hidden;   // add a scrollbar horizentally, white-space: nowrap;
overflow-y: scroll;   // add a scrollbar vertically
```

##Float  
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

##Align  
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

##Use combinators to target an element  
  
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
  <p>Paragraph 1 in the div.</p>
  <span><p>Paragraph 2 in the div.</p></span> // will not change
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

Select elements with a certain tag that has a class
```
p[class]{...;}
```

Select elements with a certain tag that has the id <p id="testid">
```
p#testid{...;}
```

Select elements with a certain tag that has an id
```
p[id]{...;}
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



