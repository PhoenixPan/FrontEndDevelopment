#CSS  

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
1. Internet Explorer 8 and earlier versions, include padding and border in the width property. To fix this problem, add a <!DOCTYPE html> to the HTML page.  
2. 


##Outline
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





1. Change the style of the entire page in <_head_>, change some elements in a leading <_style_> block, or change one element within it <_p style="color: red"_><_/p_>  
2. Remove underline in hyperlink: style="text-decoration:none"  
3. Limit the application of class. In this case, only <_span_> within <_p_> will be affected.   
```
p.tip span {
	font-weight:bold;
	color:#ff9955;
	}
```
4. Table:
```
    border: 5px solid red;
    border-collapse:collapse;
    text-align:center;
```

Specify the tag that a class(es) can apply to
```
p, h1.center {
  color: red;
}
```

#Addition

1. Override priority:  
!important(pink) > inline style(white) > id(orange) > bottom of style(blue) > top of style(pink)
```
<style>
  body {
    background-color: #000000;  //hex code color
    background-color: rgb(255, 165, 0); //RGB color
    font-family: Monospace;
    color: F0F;                 // shortened version
  }
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
<h1 id="orange-text" class="pink-text blue-text" style = "color:white">Hello World!</h1>
```



```
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 20px 40px 20px 40px;  //top, right, bottom, left
    margin: 20px 40px 20px 40px;
  }
  
  .red-box {
    background-color: red;
    padding: 20px;
  }

  .green-box {
    background-color: green;
    padding: 10px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box green-box">padding</h5>
</div>
```
