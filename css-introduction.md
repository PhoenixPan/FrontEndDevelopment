#CSS  


##General  
1. Change the style of the entire page in <_head_>, change some elements in a leading <_style_> block, or change one element within it <_p style="color: red"_><_/p_>  
2. Remove underline in hyperlink: style="text-decoration:none"  

#####Limit the application of class. In this case, only <_span_> within <_p_> will be affected.   
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
margin:50px 25px 50px 25px;
margin-top
margin-right
margin-bottom
margin-left

// Postfix
auto
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
padding
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
width
max-width
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
white-space:nonrap;        // specifies how white-space inside an element is handled
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

##Links
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
3. 


##List  




4. Table:
```
    border: 5px solid red;
    border-collapse:collapse;
    text-align:center;
```


