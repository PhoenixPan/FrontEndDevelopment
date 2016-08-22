#CSS  
1. Change the style of the entire page in <_head_>, change some elements in a leading <_style_> block, or change one element within it <_p style="color: red"_><_/p_>  
2. Remove underline in hyperlink: style="text-decoration:none"  
3. Limit the application of class. In this case, only <_span_> within <_p_> will be affected.   
```
p.tip span {
	font-weight:bold;
	color:#ff9955;
	}
```
