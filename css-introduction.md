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
