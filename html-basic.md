# Concepts
1. The hierarchical structure of HTML is called the DOM (document object model);  

#Tag  
All tags:  
https://developer.mozilla.org/en-US/docs/Web/HTML/Element
http://www.w3school.com.cn/tags/index.asp  
http://www.w3school.com.cn/html/html_formatting.asp  

###Anchor (hyper link)    
Target
**_self**: default. Opens the linked document in the same frame as it was clicked;  
**_blank**: Opens the linked document in a new window or tag;  
**_parent**: Opens the linked document in the parent frame;  
**_top**: Opens the linked document in the full body of the window;  
**_framename**: 	Opens the linked document in a named frame;  
  
Open links with the same target in the target window or the same window
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

###Text  
1. <**b**> and <**i**> are presentationl elements that convey no extra importance;  
2. <**em**> and <**strong**> are phrase elements that strength SEO, while <**strong**> is stronger than <**em**>;  
3. <**mark**> to highlight;  
4. <**sub**> and <**sup**> to subscript or superscript;  
5. <**blockquote**> to quote and cite;  
6. <**bdo dir="rtl"**> to inverse a text;  
7. Provide useful information for search engine or translation: abbrevation, cite, define  
```
<p><abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
<p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p>
<p><dfn><abbr title="World Health Organization">WHO</abbr></dfn> was founded in 1948.</p>
```


###Image  
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
###<**head**> - Container of metadata
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

###<**span**>  
change a part of the content  
```
<p><span style="color:red">some text.</span>some other text.</p>
```

###<**pre**> to maintain format
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

###Frameset  
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

###<**list**>  
1. Change labels: <**ol type="A"**>;  
2. Change marks: style="list-style-type:square";  

###<**form**>  
```
<form>
  <input type="radio" name="gender" value="male"> Male
  <input type="radio" name="gender" value="female"> Female
</form>

<form action="action_page.php">
  <select name="cars">
    <option value="volvo">Volvo</option>
    <option value="ford">Ford</option>
    <option value="fiat">Fiat</option>
    <option value="audi">Audi</option>
  </select>
  <input type="submit">
</form>

<form action="action_page.php">
  <textarea name="note"></textarea>
  <input type="submit">
</form>


<form action="action_page.php">
  Quantity (between 1 and 5):
  <input type="number" name="quantity" min="1" max="5"></input>
  <input type="submit">
</form>
```

###Depreciated Tags (replace with style):
```
<center>
<font> and <basefont> (style="font-family:verdana")
<s> and <strike>	
<u>
```

# Named character references
When you want to display a greater-than symbol in the text, you can use a named character reference. You should know these four common named character references:

&gt; denotes the greater-than sign (>)
&lt; denotes the less-than sign (<)
&amp; denotes the ampersand (&)
&quot; denotes double quote (")

http://w3c.github.io/html/syntax.html#named-character-references
http://www.w3school.com.cn/tags/html_ref_entities.html 

# Quirks Mode and Standards Mode
For HTML documents, browsers use a DOCTYPE in the **beginning** of the document to decide whether to handle it in quirks mode or standards mode. For full standards mode, use:   
```
<!DOCTYPE html>
```
XHTML does not require this line as everything will be in full standards mode.  

#Charactistics  
1. Format: spaces in source code will be reduced to one and in-text newline does not work either. Use one or more "<**br /**>". 
2. Conditional annotation
    ```
    <!--[if IE 8]>
        .... some HTML here ....
    <![endif]-->
    ```
3. Special text content such as < and > or space, see: http://www.w3school.com.cn/tags/html_ref_entities.html  
4. 


#Attributes  
1. alignment: style="text-align:center"  
2. background: style="background-color:yellow"  
3. quotation: use either " or '. Use ' when " is in text: name='Bill "HelloWorld" Gates'  
4. placeholder: provides hint in text  
5. size: the length of input area  
Divide line:  
```
<p>Paragraph A</p>
<hr />
<p>Paragraph B</p>
```

Action:  
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

http://www.w3school.com.cn/tags/html_ref_standardattributes.asp  
