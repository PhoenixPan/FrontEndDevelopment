# DOM

## Select elements  

1. Direct reference:

	```
	document.URL
	document.body
	document.head
	document.links // all anchor tags
	```

2. document.querySelector: Use CSS style selector to perform all functions that "getElement" has. It only works when your DOM is ready. If it returns null, try to place all JS script at bottom of the page.

	```
	document.querySelector("h1");     // select the first element that fits.
	document.querySelectorAll("h1");  // select all elements that fit
	```

3. document.getElement: get element by difference references

	```
	document.getElementById(id)  
	document.getElementsByTagName(name)  // return a node list (a light-weight array-like) of all elements with this tag
	document.getElementsByClassName(name)  // return a node list of elements
	```

4. Adding and Deleting Elements  

	```
	document.createElement(element)  
	document.removeChild(element)  
	```

