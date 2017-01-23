# JavaScript

## Basic
1. JavaScript uses Unicode;  
2. JavaScript use camelCase;  

## Convention  
1. Unlike HTML and CSS, we encourage space around operations(= + - * / );  
2. Declare all variables at the beginning of a script;  
3. 

## Best practice 
1. Avoid global variable and always declare local variable, otherwise it will become global variables;  
2. Declare and initialize all variable on the top, including loop index;  
3. 

## The order of importing scripts matter!
If "client" uses functions from "mqttws31", import it later. Otherwise an "class not defined" error will raise.  
```
<script type="text/javascript" src="mqttws31.js"></script>
<script type="text/javascript" language="javascript" src="client.js"></script>
```

## How to implement
1. JavaScript, both internal and external ones, can be placed within <**head**> or <**body**> or both of them;   
2. Use external .js file <**script src="myScript.js"**><**/script**>   
2. <**script type="text/javascript"**> is no longer required, as JS is the default scripting language in HTML;    
3. Advantage of separate file: clean and easy to maintain, cached JavaScript files can speed up page loads.  

## Output  
1. window.alert()：writing into an alert box  
2. document.write(): writing into the HTML output, will delete all existing HTML, should only be used for testing  
3. innerHTML: writing into an HTML element  
4. console.log(): writing into the browser console  
5. clear(): clear the console

## Syntax  
1. You can use both single or double quote, same as in HTML;  
2. Ending 0s will be omitted: 10.50 ---display--> 10.5;  

## Operations  
##### Operations:  
===:	equal value and equal type   
!==:	not equal value or not equal type  
?:	ternary operator  
innerHTML = typeof "John";	Returns the type of a variable  
instanceof:	Returns true if an object is an instance of an object type  
Exponentiation:	10 ** 2  
  
Examples:
```
var x = 5;
x === "5"; // false
x == "5";  // true
```
```
var x = null;
x === undefined; // false
x == undefined;  // true
```
```
true == "1";       // true
false == 0;        // true
null == undefined; // true
NaN == NaN;        // false

```

##### Operate string with number
A string will be recognized as a number as long as it's not in PLUS operation and it consisits only numeric values  
```
//Same as Java
"a" + 1 + 2 // a12
1 + 2 + "a" // 3a

//Different from Java
1 - "2" // -1        
"2" - "1" // 1
"100" / 10 // 10
"10" * "10" // 100

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

## Variable
1. objects and functions are also variables;  
2. You can re-declare a variable. If you don't assign a new value, it will keep the old one:  

##### undefined
declared but not initialized variables will give "undefined" value and type: var num; 
```
var carName = "Volvo";
var carName;  // still "Vovlo"
```

##### null
null is explicit empty. The value of person is null, but typeof person is object, which is considered a bug.
```
var person = null;
```

##### scope  
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
  
##### empty an var / object  
Both null and undefined can be used to empty an var or object  
```
typeof undefined             // undefined
typeof null                  // object
null === undefined           // false
null == undefined            // true
```

## Function
1. Two ways to define functions
	```
	// function declaration
	function myFunction(str) {
		return null;
	}
	
	// function express
	var myFunction = function() {
		return null;
	}
	```
2. Accessing a function without () will return the function definition(function itself)
3. You can call function within the script
4. Pass multiple argument

	```
	function greet(name1, name2) {
		console.log("Hello " + name1 + " and " + name2 + "!");
	}

	// greet("Johns","David");
	```
5. No executions after return, though you can leave your codes there(not good anyway)

## Object
1. Values pairs are called properties;  
2. JavaScript objects cannot be compared, (x == y) is always false ;  
3. JavaScript treats primitive values as objects when executing methods and properties;  
4. Change properties in two ways:  

  ```
  objectName["propertyName"]
  objectName.propertyName
  ```
5. Methods are build-in functions:  

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
6. primitive objects

  ```
  var x = 500;             
  var y = new Number(500);

  // (x == y) is true because x and y have equal values
  // (x === y) is false because x and y have different types
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
##### Escape
```
var y = "We are the so-called \"Vikings\" from the north."
```
\n seems to work as new line, but it only renders one space in html. Use "<br>" to be effective.  
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

##### Don't create string objects, it's slow, confusing, and unpredictable.

## String methods  
Complete reference: http://www.w3schools.com/jsref/jsref_obj_string.asp
```
var num = str.length;  
var num = str.indexOf("yes");  
var num = str.lastIndexOf("a");  
var num = str.search("a");        // equal to indexOf() but more powerful wth regexp
  
var str = str.slice(start, end)          // accept negative values, not in IE8 or earlier  
var str = str.slice(start)               // to the end
var str = str.substring(start, end)      // don't accept negative values  
var str = str.substring(start)           // to the end
var str = str.substr(start, length)      // start can be negative  

var str = str.replace("Microsoft","mypattern");  // replace only the first, accept regular expression
var str = str.replace(/Microsoft/g,"mypattern"); // add a g tag to replace all

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

## Number
Complete reference: http://www.w3schools.com/jsref/jsref_obj_number.asp  
1. JS numbers are always 64-bits floating point;  
2. Integers are considered accurate up to 15 digits: var y = 9999999999999999; // y = 10000000000000000;  
3. The maximum number of decimals is 17, but the floating point is not always accurate: var x = 0.2 + 0.1; // x = 0.30000000000000004;   
4. To ensure an accurate decimal, to multiply and divide: var x = (0.2 * 10 + 0.1 * 10) / 10;  
5. If a number goes outside of the largest possible value, it becomes "Infinity": while (num != -Infinity);   
6. Divide by 0 will also give Infinity: var y = -2 / 0; (// y = -Infinity;)  
7. Infinity is a number type;  

### Scientific notation
```
var y = 123e5;      // 12300000
var z = 123e-5;     // 0.00123
```
### NaN - Not a Number
Type is number. 
```
// operate with non-numeric string
var x = 100 / "Apple";

// operate a number with a NaN
var x = NaN, y = 5;
var z = x + y;   

// operate a number with an undefined value
var x, y = 5;
var z = x + y;         

// operate two non-numeric values
"Hello" - "Dolly" // NaN

// Difference: operate a string with a NaN
var x = NaN, var y = "5";
var z = x + y;  // z = NAN5
```

### Number methods
```
// Return a STRING
(1 + 1).toString();
(1).toExponential();  // 3.000000e+0
(5.555).toFixed(2);   // 5.56  perfect for working with money
(1923.656).toPrecision(2)  // 1.9e+3   only display these many units

// Return a NUMBER
(123).valueOf(); // used internally to convert number objects to primitive values. Not in your code. 

// Convert variables to number
innerHTML = Number("10");     // 10
innerHTML = Number("10 10");  // NaN
innerHTML = parseInt("10")    // 10
innerHTML = parseInt("10.33 10")  // 10
innerHTML = parseInt("year 10")   // NaN
innerHTML = parseFloat("10.33")   // 10.33
```
### Number properties  
Number.MAX_VALUE:	Returns the largest number possible in JavaScript  
Number.MIN_VALUE:	Returns the smallest number possible in JavaScript  
Number.NEGATIVE_INFINITY:	Represents negative infinity (returned on overflow)  
Number.NaN:	Represents a "Not-a-Number" value  
Number.POSITIVE_INFINITY:	Represents infinity (returned on overflow)  

## Date()
getDate()	Get the day as a number (1-31)  
getDay()	Get the weekday a number (0-6)  
getFullYear()	Get the four digit year (yyyy)  
getHours()	Get the hour (0-23)  
getMilliseconds()	Get the milliseconds (0-999)  
getMinutes()	Get the minutes (0-59)  
getMonth()	Get the month (0-11)  
getSeconds()	Get the seconds (0-59)  
getTime()	Get the time (milliseconds since January 1, 1970)  

## RegExp
/pattern/modifiers;  
```
var n = str.search(/mypattern/i);
var n = str.search(/mypattern/i);

/e/.test("The best things in life are free!"); // return true
/e/.exec("The best things in life are free!"); // return match text if found, or null if not
```
i:	Perform case-insensitive matching
g:	Perform a global match (find all matches rather than stopping after the first match)
m:	Perform multiline matching

```
str.replace(/"target"/flag, "newchar");
```

## Mistakes
true, because x is now 10, and 10 is true
```
var x = 0;
if (x = 10)
```

## JSON 
```
<p id="demo"></p>

<script>
var text = '{"employees":[' +
'{"firstName":"John","lastName":"Doe" },' +
'{"firstName":"Anna","lastName":"Smith" },' +
'{"firstName":"Peter","lastName":"Jones" }]}';

obj = JSON.parse(text);
document.getElementById("demo").innerHTML =
obj.employees[1].firstName + " " + obj.employees[1].lastName;
</script>

```
