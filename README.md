# WebApplication

Questions & temp notes  
```
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
    display: block;
}
```

```
@media screen and (max-width: 600px) {
    ul.topnav li.right,
    ul.topnav li {float: none;}
}

http://www.w3schools.com/css/tryit.asp?filename=trycss_navbar_horizontal_responsive
```


Why doesn't work with "#navbar-container"?
```
#navbar-container button {
	border: none;
	background: none;
	display:inline-block;
	margin: 0;
	padding: 5px 10px;
	font-weight: 400;
}
```

2. Cross origin: Cross origin requests are only supported for protocol schemes: run your html on a simple server to get rid of this:    

	howler.min.js:2 XMLHttpRequest cannot load file:///C:/Users/Jiabei/Desktop/Web/partatap/src/sounds/zig-zag.mp3. Cross origin requests are only supported for protocol schemes: http, data, chrome, chrome-extension, https, chrome-extension-resource.
	
	I decided to run it on a local HTTP server hosted by Python, using:
	
	```
	python -m SimpleHTTPServer
	```
