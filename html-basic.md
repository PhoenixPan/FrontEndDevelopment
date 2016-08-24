#Tag  
http://www.w3school.com.cn/tags/index.asp  
http://www.w3school.com.cn/html/html_formatting.asp  

##<**head**> - Container of metadata
Title: define title in browser and search engine;  
Base: provides default link and target;  
Link: links to outside resources, such as style;  
Meta: used in many services and serarch engine;  
```
<head>
  <title>Title of the document</title> 
  <base href="http://www.w3school.com.cn/images/" />
  <base target="_blank" />
  <link rel="stylesheet" type="text/css" href="mystyle.css" />
  <meta name="description" content="Free Web tutorials on HTML, CSS, XML" />
  <meta name="author" content="w3school.com.cn">
</head>
```


##<**Span**>  
change a part of the content  
```
<p><span style="color:red">some text.</span>some other text.</p>
```

##Anchor (hyper link)    
Use target="_blank" to open in a new page  
```
<a href="http://www.w3school.com.cn/" target="_blank">Visit W3School!</a>
```
Use name to jump to a tag in the same page (of course other pages as well). Grant each section a name anchor to organize the page. If the anchor is not found, the page will return to the top. No errors.    
```
<a name="tips">Mainpage - Help</a>
<a href="#tips">Help</a>
```
Click to send an email example, use %20 to replace space.  
```
<p>
Another mailto link:
<a href="mailto:someone@microsoft.com?cc=someoneelse@microsoft.com&bcc=andsomeoneelse2@microsoft.com&subject=Summer%20Party&body=You%20are%20invited%20to%20a%20big%20summer%20party!">Send!</a>
</p>
```

##Image  
Background (gif and jpg only).   
```
<body background="/i/eg_background.jpg">
```
Use alt to display a text message when the picture is unavailable.  
```
<img src="boat.gif" alt="This is not available">
```
Insert image in other elements and align it accordingly (bottom, middle, top).  
```
<p>Picture <img src="/i/eg_cute.gif" align="bottom"> in text.</p>
```
Image map: http://www.w3school.com.cn/tiy/t.asp?f=html_areamap  
```
<img src="/i/eg_planets.jpg" usemap="#planetmap" />
<map name="planetmap" id="planetmap">

<area
shape="rect"
coords="0,0,110,260"
href ="/example/html/sun.html"/>

</map>
```

##More SEO
Provide useful information for search engine or translation: abbrevation, cite, define  
```
<p><abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
<p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p>
<p><dfn><abbr title="World Health Organization">WHO</abbr></dfn> was founded in 1948.</p>
```

##<**pre**> to maintain format
```
<p>
<pre>
   My Bonnie lies over the ocean.

   My Bonnie lies over the sea.

   My Bonnie lies over the ocean.

   Oh, bring back my Bonnie to me.
</pre>
</p>
```

##Frameset  
Display multiple htmls in the same page.  
```
<html>
<frameset cols="25%,50%,25%">
  <frame src="/example/html/frame_a.html">
  <frame src="/example/html/frame_b.html">
  <frame src="/example/html/frame_c.html">

<noframes>
<body>Your browser does not support frameset!</body>
</noframes>

</frameset>
</html>
```

##Depreciated (replace with style):
```
<center>
<font> and <basefont> (style="font-family:verdana")
<s> and <strike>	
<u>
```
  

#Charactistics  
1. Format: spaces in source code will be reduced to one and in-text newline does not work either. Use one or more "<*br /*>". 
2. Conditional annotation
```
<!--[if IE 8]>
    .... some HTML here ....
<![endif]-->
```
3. Special text content such as < and > or space, see: http://www.w3school.com.cn/tags/html_ref_entities.html  
4. 


#Attributes  
http://www.w3school.com.cn/tags/html_ref_standardattributes.asp  
1. Alignment: style="text-align:center"  
2. Background: style="background-color:yellow"  
3. Quotation: use either " or '. Use ' when " is in text: name='Bill "HelloWorld" Gates'  
4. Divide line:  
```
<p>Paragraph A</p>
<hr />
<p>Paragraph B</p>
```
5. Target: open links with the same target in the target window or the same window
```
<iframe src="demo_iframe.htm" name="iframe_a"></iframe>
<p><a href="http://www.w3school.com.cn" target="iframe_a">W3School.com.cn</a></p> //Open in "iframe_a"

// Open a new tag when clicked the first time, but uses the same page for more clicks  
<h3>Table of Contents</h3>
<ul>
  <li><a href="/example/html/pref.html" target="view_window">Preface</a></li>
  <li><a href="/example/html/chap1.html" target="view_window">Chapter 1</a></li>
  <li><a href="/example/html/chap2.html" target="view_window">Chapter 2</a></li>
  <li><a href="/example/html/chap3.html" target="view_window">Chapter 3</a></li>
</ul>
```
6. Action:  
```
<form action="www.google.com">
<input></input>
</form>
```

#####Depreciated(replace with style):
```
align
bgcolor
color
```
