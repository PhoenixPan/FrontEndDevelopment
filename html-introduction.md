##Tag: 
http://www.w3school.com.cn/tags/index.asp  
http://www.w3school.com.cn/html/html_formatting.asp  
  
1. Newline: 
```
line1 <br /> line2
<p>Paragraph A<br />Paragraph B</p>
```
2. Text modification:  
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
3. Provide useful information for search engine or translation: abbrevation, cite, define;  
```
<p><abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
<p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p>
<p><dfn><abbr title="World Health Organization">WHO</abbr></dfn> was founded in 1948.</p>
```
4. Code elements:http://www.w3school.com.cn/html/html_quotation_elements.asp  
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

#####Depreciated (replace with style):
```
<center>
<font> and <basefont> (style="font-family:verdana")
<s> and <strike>	
<u>
```
  

##Attributes: http://www.w3school.com.cn/tags/html_ref_standardattributes.asp
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

##Charactistics:  
1. Format: spaces in source code will be reduced to one and in-text newline does not work either. Use one or more "<*br /*>". 
2. 
