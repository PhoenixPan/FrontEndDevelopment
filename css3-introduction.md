3. Combine several css files into one using: @import "this.css"; 

##Target
```
// Change all elements
* {font-family: "Arial Black", sans-serif;}

// Change all with tag div
div * {font-family:"Comic Sans MS, cursive;}

// Change all elements with attribute "alt" whose value is "value"  
*[alt~="value"] {...;}

// Change all elements with class "testclass"
.testclass {...;}

// Change all elements with id "testid"
#testid {...;}

// Define attributes for a class for a certain tag: <p class="testclass">
p.testclass {...;}

// Change elements in a kind of tag that has a class
p[class]{...;}

// Define attributes for an id for a certain tag: <p id="testid">
p#testid{...;}

// Change elements in a kind of tag that has an id
p[id]{...;}

// Change the child element whose parent element's parent element has an id of "testid"
#testid ol li {...;}
#testid ul li {...;}

<div id="testid">
<ol>
  <li>ElementOne</li>
</ol>
<ul>
  <li>ElementTwo</li>
</ul>
</div>

// Change an element that follows another, change p that follows h3
h3 + p {...;}

// Change an element within an element that follows another: change a within p that follows h3
h3 + p > a {...;}

<h3>Heading3</h3>
<p>This is the <a href="hyperlink">website</a></p>


```
