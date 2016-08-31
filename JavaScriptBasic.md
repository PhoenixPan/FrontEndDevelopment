#JavaScript

##Basic
1. JavaScript uses Unicode;  
2. JavaScript use camelCase;  

##Convention  
1. Unlike HTML and CSS, we encourage space around operations(= + - * / );  
2. Declare all variables at the beginning of a script;  
3. 

##Where To  
1. JavaScript, both internal and external ones, can be placed within <**head**> or <**body**> or both of them;  
2. Use external .js file <**script src="myScript.js"**><**/script**>   
2. <**script type="text/javascript"**> is no longer required, as JS is the default scripting language in HTML;    
3. Advantage of separate file: clean and easy to maintain, cached JavaScript files can speed up page loads.  

##Output  
1. Writing into an alert box, using window.alert();  
2. Writing into the HTML output using document.write(), will delete all existing HTML, should only be used for testing;    
3. Writing into an HTML element, using innerHTML;  
4. Writing into the browser console, using console.log();  

##Syntax  
1. You can use both single or double quote, same as in HTML;  
2. Ending 0s will be omitted: 10.50 ---display--> 10.5;  

##Operations  
#####Operations:  
===:	equal value and equal type  
!==:	not equal value or not equal type
?:	ternary operator
innerHTML = typeof "John";	Returns the type of a variable
instanceof:	Returns true if an object is an instance of an object type
Exponentiation:	10 ** 2
##### Minus string with number
A string will be recognized as a number in MINUS operation if it consisits only numeric values
```
//Same as Java
"a" + 1 + 2 // a12
1 + 2 + "a" // 3a

//Different from Java
1 - "2" // -1        
"2" - 1 // 1
```
##### Add new line in output
```
document.getElementById("demo").innerHTML = x1 + "<br>" + x2 + "<br>" + y + "<br>" + z
```
##### Automatic transform
```
var x = 5; // var will be treated as a number:6,7,8...
// var x = prompt("Give me a number");  //var will be treated as string: 51,511,5111...
function test() {
  x += 1;
  document.getElementById("text").innerHTML=x;
}
```



##Variable
1. var num; will give "undefined" value and type; 
2. objects and functions are also variables;  
3. You can re-declare a variable. If you don't assign a new value, it will keep the old one:  
```
var carName = "Volvo";
var carName;  // still "Vovlo"
```
##### Scope  
We have local(variable declared within function and function arguments) and global scope. However, variable assigned within a function that has not been declared is global:  
```
document.getElementById("demo").innerHTML = "I can display " + carName;

function myFunction() {
    carName = "Volvo";        // global
    // var carName = "Volvo"; // local
}
```
The global scope is the window object, all global variables belong to it. 
```
window.carName;
```
##### Lifetime
Local variables are deleted when the function is completed.  
Global variables are deleted when you close the page.  
  
##### One statement
```
var person = "John Doe", carName = "Volvo", price = 200;
// or
var person = "John Doe", 
carName = "Volvo", 
price = 200;
```
##### Dynamic types
```
var x;               // Now x is undefined
var x = 5;           // Now x is a Number
var x = "John";      // Now x is a String
```
##### Scientific notation
```
var y = 123e5;      // 12300000
var z = 123e-5;     // 0.00123
```
##### Unassigned value 
```
var num1;
```
Value and type are both undefined  
```
var num1 = 1, num2;  
document.getElementById("demo").innerHTML =num2 + "<br>" + (num1 + num2)+ "<br>" + typeof (num1 + num2);
```
These give: 
undefined  
NaN  
number  
  
##### null
The value of person is null, but typeof person is object, which is considered a bug.
```
var person = null;
```
##### empty an var / object  
Both null and undefined can be used to empty an var or object  
```
typeof undefined             // undefined
typeof null                  // object
null === undefined           // false
null == undefined            // true
```

## Function
1. Accessing a function without () will return the function definition(function itself);  
2. You can call function within the script;  
3. 

## Object
1. Values pairs are called properties;  
2. JavaScript objects cannot be compared, (x == y) is false ;  
3. Change properties in two ways:  
```
objectName["propertyName"]
objectName.propertyName
```
3. Methods are build-in functions:  
```
var person = {
    firstName: "John",
    lastName : "Doe",
    id       : 5566,
    fullName : function() {
       return this.firstName + " " + this.lastName;
    }
};

person.fullName();
```

## HTML events
onchange:	An HTML element has been changed  
onclick:	The user clicks an HTML element  
onmouseover:	The user moves the mouse over an HTML element  
onmouseout:	The user moves the mouse away from an HTML element  
onkeydown:	The user pushes a keyboard key  
onload:	The browser has finished loading the page  
More on: http://www.w3schools.com/jsref/dom_obj_event.asp  

## String 
#####Escape
```
var y = "We are the so-called \"Vikings\" from the north."
```
\':	single quote  
\":double quote    
**\****\**:	backslash  
\n:	new line. It is rendered as 1 space in html. Use "<br>"
\r:	carriage return  
\t:	tab  
\b:	backspace  
\f:	form feed  

##### break a long string 
With single \: not safe everywhere
```
document.getElementById("demo").innerHTML = "Hello \
  Dolly!";
```
Actually break it is the safest way
```
document.getElementById("demo").innerHTML = "Hello" + 
"Dolly!";
```

##### New line
\n seems to work as new line, but it only renders one space in html. Use "<br>" to be effective.  

##### Don't create string objects, it's slow, confusing, and unpredictable.

## String methods  
Complete reference: http://www.w3schools.com/jsref/jsref_obj_string.asp
```
var num = str.length;  
var num = str.indexOf("a");  
var num = str.lastIndexOf("a");  
var num = str.search("a");        // equal to indexOf() but more powerful  
  
var str = str.slice(start, end)          // accept negative values, not in IE8 or earlier  
var str = str.slice(start)               // to the end
var str = str.substring(start, end)      // don't accept negative values  
var str = str.substring(start)           // to the end
var str = str.substr(start, length)      // start can be negative  

var str = str.replace("Microsoft","W3Schools");  // replace only the first, accept regular expression
var str = str.replace(/Microsoft/g,"W3Schools"); // add a g tag to replace all

var str = str.toUpperCase(); 
var str = str.toLowerCase(); 

var str = str1.concat(str2);   // same as + 
var str = str1.concat("something else",str2); 

var chr = str.charAt(0); 
var num = str.charCodeAt(0); 
```
1. Strings are immutable  
2. Don't access string as an array. It does not work in all browsers, it's confusing,.
```
var str = "HELLO WORLD";
str[0];
```
convert the string to array first:
```
var str = "a,b,c,d,e,f";
var arr = str.split();       // put the entire string in arr[0]
//var arr = str.split("");   // Split in characters
document.getElementById("demo").innerHTML = arr[0];
```
