#JavaScript

##Basic
1. JavaScript uses Unicode;  
2. JavaScript use camelCase;  
3. JavaScript is a programming language;  

##Convention  
1. Unlike HTML and CSS, we encourage space around operations(= + - * / );  

##Where To  
1. JavaScript, both internal and external ones, can be placed within <**head**> or <**body**> or both of them
2. <**script type="text/javascript"**>: type attribute is no longer required, as JS is the default scripting language in HTML  
3. 


##Output  
1. Writing into an alert box, using window.alert();  
2. Writing into the HTML output using document.write(), should only be used for testing;    
3. Writing into an HTML element, using innerHTML;  
4. Writing into the browser console, using console.log();  


##Syntax  
1. Use single or double quote for strings, same as in HTML;  
2. Ending 0s will be omitted: 10.50 ---display--> 10.5;  


##Expression  
```
//Same as Java
"a" + 1 + 2 // a12
1 + 2 + "a" // 3a

//Different from Java
//A string will be recognized as a number if it consisits of only numeric values
1 - "2" // -1        
"2" - 1 // 1
```
```
  var x = 5; // var will be treated as a number:6,7,8...
  // var x = prompt("Give me a number");  //var will be treated as string: 51,511,5111...
  function test() {
    x += 1;
	document.getElementById("text").innerHTML=x;
  }
```
