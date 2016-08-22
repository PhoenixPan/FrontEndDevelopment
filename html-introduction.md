##Tag 
http://www.w3school.com.cn/tags/index.asp  
http://www.w3school.com.cn/html/html_formatting.asp  
  
Newline: 
```
line1 <br /> line2
<p>Paragraph A<br />Paragraph B</p>
```
  
Text modification  
```
<b>
<strong>
<big>
<small>
<em>
<i>
<sub>
<sup>
<ins>
<del>
<q> // add quotation: <p>Our goal is:<q>Cure the world.</q></p>
<blockquote> // indent
```

Provide useful information for search engine or translation: abbrevation, cite, define  
```
<p><abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
<p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p>
<p><dfn><abbr title="World Health Organization">WHO</abbr></dfn> was founded in 1948.</p>
```

Code elements:http://www.w3school.com.cn/html/html_quotation_elements.asp  
Use <_pre_> to keep spaces and lines  
```
<p>Coding Example:</p>

<code>
<pre>
var person = {
    firstName:"Bill",
    lastName:"Gates",
    age:50,
    eyeColor:"blue"
}
</pre>
</code>
```

<_Span_>: change a part of the content  
```
<p><span style="color:red">some text.</span>some other text.</p>
```

Hyper link or anchor  
Use target="_blank" to open in a new page  
```
<a href="http://www.w3school.com.cn/" target="_blank">Visit W3School!</a>
```
Use name to jump to a tag in the same page (of course other pages as well). Grant each section a name anchor to organize the page. If the anchor is not found, the page will return to the top. No errors.    
```
<a name="tips">Mainpage - Help</a>
<a href="#tips">Help</a>
```


#####Depreciated (replace with style):
```
<center>
<font> and <basefont> (style="font-family:verdana")
<s> and <strike>	
<u>
```
  

##Attributes  
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
#####Depreciated(replace with style):
```
align
bgcolor
color
```

##Charactistics  
1. Format: spaces in source code will be reduced to one and in-text newline does not work either. Use one or more "<*br /*>". 
2. Conditional annotation
```
<!--[if IE 8]>
    .... some HTML here ....
<![endif]-->
```


##CSS  
1. Change the style of the entire page in <_head_>, change some elements in a leading <_style_> block, or change one element within it <_p style="color: red"_><_/p_>  
2. Remove underline in hyperlink: style="text-decoration:none"  
3. Limit the application of class. In this case, only <_span_> within <_p_> will be affected.   
```
p.tip span {
	font-weight:bold;
	color:#ff9955;
	}
```
