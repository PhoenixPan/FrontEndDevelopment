# CSS Basic

## Good references
The invisable parts of CSS  
https://madebymike.com.au//writing/the-invisible-parts-of-CSS/?utm_source=SitePoint&utm_medium=email&utm_campaign=Versioning

## Good practice: 
1. Separation of containers and content: objects should look the same no matter where you put them;
2. Order items in alphabetic order;
3. Use indentation to indicate items with the same parent;
4. Compress each CSS item in one line for easier read and search (optional);

## Ways to apply CSS
1. External (preferred): refer in head tag: `<link rel="stylesheet" type="text/css" href="mystyle.css">`;  
2. Internal: use `<style>`;  
3. Inline: `<h1 style="color:blue;">`;  

## Priority
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

2. !important(pink) > inline style(white) > id(orange) > external(css)> class on bottom(blue) > class on top(green). PS: external reference has lower priority than !impotant and inline, but could be higher than others depending on where it is. (Specificity: https://developer.mozilla.org/en/docs/Web/CSS/Specificity)

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


## Color
1. Default: color: red; such as red, gold, black. Check all of them here: http://colours.neilorangepeel.com/
2. Hexadecimal: color: #000000; The first two digits stand for red #FF0000, the next two for green #00FF00, the last two for blue #0000FF
3. RGB: color: rgb(0,0,0); The first value stands for red rgb(255,0,0) , the next one green rgb(0,255,0), the last one for blue rgb(0,0,255)
4. RGBA: color: rgba(0,0,0,0); The last channel is used to set transparency level from 0 to 1


## Background Image
1. There will be default margin between images, use float to remove them
2. background-repeat: repeat(default)/repeat-x/repeat-y/no-repeat
3. background-size: cover; - Stretch the image to fit the screen / contain; - fit the parent element
4. background-position: left/right top/bottom;

	  ```
	  background-position: center center;
	  background-position: 70% center; /*Image moves to left a by 30%*/
	  ```
5. background-attachment: fixed; - Image will not move as you scroll
6. background: pink url("img_tree.png") no-repeat fixed right top; - Shorthand in color, image, repeat, attachment, position

## Border 
1. Mainly consists of three attributes: width, color, and style:  

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
2. Border actually consists of four triangles or trapezoid facing a center point. To generate a tringle:  

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
	
## Outline
![outline](https://cloud.githubusercontent.com/assets/14355257/18029801/67e9a206-6c70-11e6-9c42-01c07208a1e3.jpg)  
1. The outline is NOT a part of an element's dimensions; the element's total width and height is not affected by the width of the outline
2. Declare the outline-style property if you'll apply the outline-color property, no style, no color
3. Debug layout by adding a `outline: 1px solid red` to all elements *

```
outline-color:invert; /*Opposite to the background color*/	
outline-offset; /*Specifies the space between an outline and the edge or border of an element*/
```

## Selectors & Pseudo classes

### Selectors

**Basic**  
* Element selector: `h1 {color:blue;}`
* ID selector: `#id {color:blue;}`
* Class selector: `.my-class {color:blue;}`
* Attribute-based(details in the next section): `input[type="text"] {color:blue;}`
* All elements: `#id * {color:blue;}`
* Status: `a:visited {color:blue;}`
* All children: `X Y {color:blue;}`
* All direct children: `X > Y {color:blue;}`
* Immediate sibling: `X + Y {color:blue;}`
* All preceding sibling: `X ~ Y {color:blue;}`
* Not (except): `div:not(#div-i-dont-want) {color: blue;}`
* Child selectors: `X:first-child`
* `X:nth-child(n)`
* `X:last-child`
* `X:nth-last-child`
* `X:only-child` Apply if X is the only child of its parent
* Nth of type selectors: `X:nth-of-type(odd) {color:blue;}`, Only apply to node-selectors, not class names
* `X:nth-of-type(n)`
* `X:nth-last-of-type(n)`
* `X:only-of-type` 
* `X:first-of-type`

**Select elements with attribute(s)**
* elements with a certain attribute: `p[attribute]{...;}`            
* elements with a certain value: `p[attribute="value"]{...;}`
* elements that contain a certain value:  
	`p[attribute~="value"]{...;}` only separate words, "value x" is ok, but ""value-x" and "values" will not work
	`p[attribute*="value"]{...;}` any place
* elements that start with a certain value:  
	`p[attribute|="value"]{...;}` only single word or with "-", "value" and "value-x", not "value x"
	`p[attribute^="value"]{...;}` any place
* elements that end with a certain value, no rules, "-value", "\_value", "xvalue" will all be ok  
	`p[attribute$="value"]{...;}`  
	
##### Reference  
[The 30 CSS Selectors You Must Memorize](https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048)

### Pseudo classes

1. before and after: http://www.w3schools.com/cssref/sel_before.asp  
	
	insert content before or after the selected elements (and also style it)  
	```
	p::before { 
	    content: "Read this -";
	    color: red;
	    font-weight: bold;
	}
	```
	
	combined usage with hover  
	```
	nav li a:after { 
	  content: "";
	  height: 100%; 
	  left: 0; 
	  top: 0; 
	  width: 0px;  
	  position: absolute; 
	  transition: all 0.3s ease 0s; 
	}
	
	nav li a:hover:after{ width: 100%; } // hover effect: bar will grow from left to right and occupy 100% of the element
	```
	
2. Relates to links:  
	* a:link {color: red}; - unvisited link;  
	* a:visited {color: green}; 
	* a:hover; - MUST come after a:link and a:visited in the CSS definition in order to be effective;  
	* a:active; - MUST come after a:hover in the CSS definition in order to be effective; 
	
3. p:lang(anything) - define special rules for different language:  
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

# Normal Flow: Block formatting contexts

![boxmodel](https://cloud.githubusercontent.com/assets/14355257/18029725/1e3362f2-6c6e-11e6-8484-af0b88e33bc2.jpg)    

1. Internet Explorer 8 and earlier versions include padding and border in the width property. To fix this, add a <!DOCTYPE html> to the HTML page. However, sometimes this is what we want, we can then use "box-sizing:border-box" to achieve this  

	```
	box-sizing: border-box // include padding and border
	box-sizing: content-box // exclude padding and border
	```
2. When you set margin or padding top/bottom in percentage, they refer to the **width** of their parent element instead of height. The following example makes a 3xn matrix of squares: (See more at: https://segmentfault.com/a/1190000004231995) 

	```
	.tile {
		width: 30%;
		background-color: blue;
		margin:1.6%;
		float: left;
		padding-top: 30%;
		border-radius: 10%;
	}
	```

5. Every element is a box!


## Margin 
1. Margin backgrounds are always transparent

```
margin:50px 25px 50px; /*top, left and right, bottom*/
margin:auto;           /*make it center, for image, also make it a block element*/
```

### Margin collapsing  
Check: https://www.w3.org/TR/CSS2/box.html#collapsing-margins   

1. Horizontal margins never collapse;
2. Floating and absolutely positioned elements never collapse;  

	![ab](https://cloud.githubusercontent.com/assets/14355257/22824643/a5a60fda-efd8-11e6-99f4-fc6b68468e70.png)

	```
	.floated {
	background-color: yellow;
	margin: 50px 0;
	float:left;
	}

	.absolute {
		background-color: pink;
		margin: 100px 0;
		position: absolute;
	}
	```

3. For adjacent siblings: The margins of adjacent siblings are collapsed unless cleared;
4. For parent and first/last child: The margin-top/bottom of a block from the margin-top/nottom of its first child block collapse if there is no border, padding, inline content, block_formatting_context created or clearance on parent (something solid between the parent and the child). The collapsed margin ends up **outside the parent**;
5. For empty blocks: If there is no border, padding, inline content, height, or min-height to separate a block's margin-top from its margin-bottom, then its top and bottom margins collapse;
6. For negative margins: The margin is the sum of the largest positive margin and the smallest (most negative) negative margin;
7. Use single-direction margin to avoid dealing with margin collapsing: https://csswizardry.com/2012/06/single-direction-margin-declarations/


**Example 1** Both top and bottom margins of the only child are collapsed into parent's, the value equals to whichever is larger. At the same time, the collapsed bottom margin outside container collapses with the top margin of outsider's top margin;

![mc1](https://cloud.githubusercontent.com/assets/14355257/22817430/36a26c80-efb7-11e6-8e26-64b524b68868.png)

	```
	#container {
		background-color: gold;
		height: 50px;
		width: 500px;
		margin: 30px 0;
	}

	#child {
		background-color: red;
		height:50px;
		width:50px;
		margin:50px 0;
	}

	#outsider {
		background-color: pink;
		margin: 50px 0;
	}
	```

**Example 2** Multiple empty element will collapse and overlap with each other based on the same top line.    

![sm](https://cloud.githubusercontent.com/assets/14355257/22817900/f9e47024-efb9-11e6-9d34-86d5522aafa8.png)

	```
	#outsider-large {
		margin: 50px 0;
	}

	#outsider-small {
		margin: 30px 0;
	}
	```


## Padding
1. Most elements do not havea default padding, so use a lot of unnecessary "padding:0" will increase burden for loading pages; 
```
padding:50px 25px 50px; /*top, left and right, bottom*/
```


## Display  
1. display: block; - a block-level element always starts on a new line and takes up the full width available;  
2. display: inline; - an inline element does not start on a new line and only takes up as much width as necessary;  
3. display: none; - commonly used with JavaScript to hide and show elements. "display:none" does not take up any space, whereas "visibility:hidden" does;  
4. display: inline-block; - will be affected by text-align and vertical-align

#### Difference between display:none and visability: hidden
Elements with visability: hidden/visable will take up spaces on the pages whereas elements with display:none will not.   

## Position
1. position:static; - default value. Not affected by top/bottom/left/right properties;  
2. position:relative; - make elements relative to their regular position in the flow (through top/bottom/left/right), the rest of the contents will not be affected;
3. position:fixed; - the elements will always be in the same position of the page (fixed navbar); 
4. position:absolute; - similar to fix, but the element position is fixed to the closest ancestor that is positioned (any kind except static). However; if an absolute positioned element has no positioned ancestors, it uses the document body, and moves along with page scrolling;  

### z-index
z-index property specifies the z-order of a positioned element and its descendants. When elements overlap, an element with larger z-index covers an element with lower one.

```
/*Text will cover image*/

#header-image {
  position: absolute;
  z-index: 0;
}

#personal-text {
  position:relative;
  z-index: 1;
}
```

## Float  
Move the element out of the normal flow (into a new flow)

### Clear 
1. clear: requires (the top border edge of the) box to be below (the bottom outer edge of) any left/right/both-floating elements **earlier** in the source document.
2. clearfix for image overflow. "overflow:auto" extend the border to include all contents. Example: http://www.w3schools.com/css/tryit.asp?filename=trycss_layout_clearfix

	```
	.clearfix {
	  overflow: auto;
	  zoom: 1; // IE6
	}
	```
	
3. display:inline-block; ~= float + clear (http://www.w3schools.com/css/tryit.asp?filename=trycss_inline-block);  

**Example 1** Before/After clear is in effect [(codepen)](http://codepen.io/PhoenixPan/pen/xgQEzx):  

Before:  Two elements both located according to the upper-left cornor of their parents:  

![beforeclear](https://cloud.githubusercontent.com/assets/14355257/22825928/ac02b408-efdf-11e6-963b-4d48e92ee142.png)

After:  The element with clear property moved below the floating element as expected. Notice, margin collapsing occured here.  

![afterclear](https://cloud.githubusercontent.com/assets/14355257/22825929/acec753e-efdf-11e6-9d19-23887ab351ab.png)

	```
 	<div id="container">
 		<p class="floated">floated</p>
 		<p class="cleared">cleared</p>
 	</div>
	```
	
	```
	#container {
	background-color: gold;
	width: 500px;
	margin: 100px 0;
	}

	.cleared {
		background-color: pink;
		margin: 50px 0;
		/*clear: left;*/
	}

	.floated {
		background-color: yellow;
		margin: 50px 0;
		float:left;
	}
	```

## Relationships among float, diaplay, position:  
1. If "display" is "none", both "float" and "position" do not apply; 
2. Else if "position" is either "fixed" or "absolute", "float" does not apply. The position of the box will be calculated by top/bottom/left/right;
3. Otherwise (position is not fixed and float is not none) the element is set on float;
  
https://leohxj.gitbooks.io/front-end-database/content/html-and-css-basic/css-layout.html
	


1. float: left; - use float to get block elements to slide next to each other;
2. display: block; - Displaying the links as block elements makes the whole link area clickable (not just the text), and it allows us to specify padding (and height, width, margins, etc. if you want);
3. padding: 8px; - Since block elements take up the full width available, they cannot float next to each other. Therefore, specify some padding to make them look good  
4. overflow:hidden; - added to the ul element to prevent li elements from going outside of the list.  

## Overflow  

```
overflow: visiable;   /* default, won't clip, let the content leaks out */
overflow: hidden;     /* hide additional content(no scroll bar) */
overflow: scroll;     /* add two scrollbars anyway */
overflow: auto;       /* add a scrollbar only when necessary */
overflow-x: hidden;   /* add a scrollbar horizentally, white-space: nowrap; */
overflow-y: scroll;   /* add a scrollbar vertically */
```

## Flex

Check whether the information about flex is obsolete: https://css-tricks.com/old-flexbox-and-new-flexbox/

## Align  
Left or right align using position or float. When aligning elements with position and float, always define margin and padding for the `<body>` element. This is to avoid visual differences in different browsers. Absolute positioned elements are removed from the normal flow, and can overlap elements, whereas float cannot;  

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

## Other properties relate to positioning
##### Overlapping: an overlapping element has to be positioned(except static). An element with greater stack order is always in front of an element with a lower stack order. If two elements have the same stack, the one declared later will be displayed on the top;  
```
z-index: -1;  /* set the stack order of an element */
```
##### Chip: can chip only absolutely positioned element
```
img {
    position: absolute;
    clip: rect(0px,60px,200px,0px);
}
```
##### @media @viewpoint
https://dev.opera.com/articles/an-introduction-to-meta-viewport-and-viewport/

## Text  
1. text-align: justify; - describes how **inline content** like text (not only text, a div with display:inline-block will work) is aligned in its parent block element. 
2. text-decoration: none; removes hyper link underline. Also with: overline/line-through/underline  
3. text-transform: uppercase/lowercase/capitalize;
4. text-indent: 50px;
5. letter-spacing: 3px; specifies space between characters in text;
6. word-spacing: 10px;  specifies space between words in text;
7. direction:rtl; changes text direction for some languages; 
8. text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue; (horizental, vertical, blur, color); 
9. column-related properties (not very compatible) http://quirksmode.org/css/columns/; 
10. To prevent user from selecting the text: 
	
	```
	user-select: none;
	```

## Font
1. Start with the font you want, and end with a generic family
2. If the name of a font family is more than one word, it must be in quotation marks, like: "Times New Roman"
3. "italic" is a special version of font, whereas "oblique" just inclines the font a bit. Since not all fonts have italic version, we use "oblique" to make the font italic when italic version is absent
4. If font-size is not specified, the default size is 16px, which is also the default of 1em
5. 1em is equal to the font size of the parent element
6. Font size can also have a fallback, like font family  

	```
	p {
	    font-size: 16px; 
	    font-size: 4vw;
	}
	```
7. Google fonts are useful

```
font-style: italic       /* normal, italic, obelique  */
font-variant: small-caps /* small-caps or normal */
font-family: "Times New Roman", Times, serif;
font:italic bold small-caps 12px/30px Georgia, serif; /* style, weight, variant, font-size/line space, font-family */

/*Responsive font size*/
font-size: calc(3vw + 3vh);
```

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

## Variables
Basic  
```
:root {
  --mycolor: #000000;
}

p {
  background-color: var(--mycolor);
}
```
Variables also cascade  
```
:root {
  --color: red;
}
body {
  --color: orange;
}
h2 {
  color: var(--color);
}
```
Any h2 will be orange since it will be a child of body  

## Filter
Nice to have it for some special effects.  

```
filter: url("filters.svg#filter-id");
filter: blur(5px);
filter: brightness(0.4);
filter: contrast(200%);
filter: drop-shadow(16px 16px 20px blue);
filter: grayscale(50%);
filter: hue-rotate(90deg);
filter: invert(75%);
filter: opacity(25%);
filter: saturate(30%);
filter: sepia(60%);
```

## Transition & Transform

### Transition
Transitions provide a way to control animation speed when changing CSS properties.  
Check all animatable properties: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animated_properties  

```
/*shorthand*/
transition: property1 duration1 timing-function1 delay1, property2 duration2 timing-function2 delay2; 

/*complete*/
transition-property: 
transition-duration: 
transition-timing-function: 
transition-delay: 
```

For timing function, we have:  
1. ease - slow start, then fast, then end slowly (this is default)  
2. linear - the same speed from start to end  
3. ease-in - slow start  
4. ease-out - slow end  
5. ease-in-out - slow start and end  
6. cubic-bezier(n,n,n,n) - cubic-bezier function. Can be used to achieve bounce effects

### Transform

1. transform: translate(10px, 10px)/translateX(10px)/translateY(10px) - change the position of this element; 
2. transform: scale(10px, 10px)/scaleX(10px)/scaleY(10px) - enlarge or shrink the element;
3. transform: rotate(90deg)/rotateX(90deg)/rotateY(90deg)/rotateZ(90deg) - rotate the element;
4. Perform multiple transform in one line

	```
	transform: translate(100px) rotate(20deg);
	```

Transition and transform can be performed at the same time on animatable elements:

	```
	div {
	    width: 100px;
	    height: 100px;
	    background: red;
	    transition: width 2s, height 2s, transform 2s;
	}

	div:hover {
	    width: 300px;
	    height: 300px;
	    transform: rotate(180deg);
	}
	```
	
## @media

The below media query will only apply if the media type is TV, the viewport is 700px wide or wider, and the display is in landscape.
```
@media tv and (min-width: 700px) and (orientation: landscape) { ...  }
```

## box-shadow
```
box-shadow: 3px 3px 5px 6px #ccc;
```
From left to right, they represent:  
1. horizontal offset: positive on right, negative on left
2. vertical offset: positive on below, negative on above
3. blur radius: 0 is sharp
4. spread radius: if negative, the shadow may be short than one edge
5. color 

Inner shadow:
```
box-shadow: inset 0 0 10px #000000;
```

## Units
### Difference between em and rem
em is based on the font size of the current element while rem is based on the font size of html element.  
https://webdesign.tutsplus.com/zh-hans/tutorials/comprehensive-guide-when-to-use-em-vs-rem--cms-23984  

## Other properties
##### Cursor: Change the cursor https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
```
<span style="cursor:help">help</span><br>
```
