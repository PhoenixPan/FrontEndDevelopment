#JavaScript

##Basic
1. JavaScript uses Unicode;  
2. JavaScript use camelCase;  
3. JavaScript is a programming language;  

##Convention  
1. Unlike HTML and CSS, we encourage space around operations(= + - * / );  
2. Declare all variables at the beginning of a script;  
3. 

##Where To  
1. JavaScript, both internal and external ones, can be placed within <**head**> or <**body**> or both of them;  
2. <**script src="myScript.js"**><**/script**> input script from .js file;   
2. <**script type="text/javascript"**>: type attribute is no longer required, as JS is the default scripting language in HTML;    
3. Advantage of separate file: clean and easy to maintain, cached JavaScript files can speed up page loads.  

##Output  
1. Writing into an alert box, using window.alert();  
2. Writing into the HTML output using document.write(), will delete all existing HTML, should only be used for testing;    
3. Writing into an HTML element, using innerHTML;  
4. Writing into the browser console, using console.log();  


##Syntax  
1. Use single or double quote for strings, same as in HTML;  
2. Ending 0s will be omitted: 10.50 ---display--> 10.5;  


##Operations  
===:	equal value and equal type  
!==:	not equal value or not equal type
?:	ternary operator
typeof:	Returns the type of a variable
instanceof:	Returns true if an object is an instance of an object type
Exponentiation:	10 ** 2
```
//Same as Java
"a" + 1 + 2 // a12
1 + 2 + "a" // 3a

//Different from Java
//A string will be recognized as a number in MINUS operation if it consisits only numeric values
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

##Variable
1. Variable with no assignment(var carName;) will display "undefined", if it's an operation, will display "NaN";  
2. You can re-declare a variable. If you don't assign a new value, it will keep the old one:  
```
var carName = "Volvo";
var carName;  // still "Vovlo"
```
3. You can declare many variables in one statement:
```
var person = "John Doe", carName = "Volvo", price = 200;
// or
var person = "John Doe", 
carName = "Volvo", 
price = 200;
```
