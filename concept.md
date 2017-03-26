## The Difference Between XML and HTML
XML and HTML were designed with different goals:  
XML was designed to carry data - with focus on what data is  
HTML was designed to display data - with focus on how data looks  
XML tags are not predefined like HTML tags are  

## XML Simplifies Things
It simplifies data sharing  
It simplifies data transport  
It simplifies platform changes  
It simplifies data availability  

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

## Manipulate style
1. Simple way:

	```
	element.style.color = "red";
	element.style.border = "1px solid blue";
	```

2. More decent way: Instead of manipulating sytles directly using "element.style.color", we could put the new style in a CSS class and add the class to the element using JS

	```
	tag.classList.add("myclass");
	tag.classList.remove("myclass");
	tag.classList.toggle("myclass");  // turn on/off a class depends on the current status
	```
	
## Manipulate text
1. textContent: obtain the plain text from this element  

	```
	element.textContent = "I <strong>like</strong> it"; // display "I <strong>like</strong> it"
	```
2. innerHTML: obtain the text as well as the tags inside it
	```
	element.innerHTML = "I <strong>like</strong> it";  // display "I like it"
	```

## Manipulate attributes

```
element.getAttribute("href");
element.setAttribute("href", "http://www.mysite.com");
```

## Events
1. addEventListener: 

	```
	element.addEventListener(eventType, functionToCall);
	```
2. Trigger an input without clicking:eventType = "change"




#### Example: Score board
HTML
```
 <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>My Title</title>
	<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
	<h1><span id="scoreWindow1">0</span> to <span id="scoreWindow2">0</span></h1>
	<p>Playing to: <span id="endpoint">5</span></p>
	<input id="max" type="number" name="endpoint" value="5">
	<button id="player1">Player One</button>
	<button id="player2">Player Two</button>
	<button id="reset">Reset</button>

	<script type="text/javascript" src="myscript.js" ></script>
</body>
</html>
```
JS
```
var player1 = document.querySelector("#player1");
var player2 = document.querySelector("#player2");
var scoreWindow1 = document.querySelector("#scoreWindow1");
var scoreWindow2 = document.querySelector("#scoreWindow2");
var score1 = 0;
var score2 = 0;
var endpoint = document.querySelector("#endpoint");
var max = 5;
var reset = document.querySelector("#reset");

document.getElementById("max").addEventListener("change", function() {
	max = this.value;
	endpoint.textContent = max;
	resetScore();
});

function resetScore() {
	scoreWindow1.textContent = "0";
	scoreWindow2.textContent = "0";
	score1 = 0;
	score2 = 0;
	scoreWindow1.classList.remove("pink");
	scoreWindow2.classList.remove("pink");
}

reset.addEventListener("click", resetScore);

player1.addEventListener("click", function() {
	console.log(typeof(max));
	if (score1 < max && score2 < max) {
		score1++;
		scoreWindow1.textContent = score1;
		if (score1 >= max) {
			scoreWindow1.classList.add("pink");
		}
	}
});

player2.addEventListener("click", function() {
	if (score1 < max && score2 < max) {
		score2++;
		scoreWindow2.textContent = score2;
		if (score2 >= max) {
			scoreWindow2.classList.add("pink");
		}
	}
});

```
CSS
```
.pink {
	color: pink;
}
```



## Ajax
http://www.ibm.com/developerworks/library/j-ajax1/  
