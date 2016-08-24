#HTML5

##Basic structrue  
```
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
</head>

<body>
Content of the document......
</body>

</html>
```

##What's new?  
New elements:  
New semantic elements like <**header**>, <**footer**>, <**article**>, and <**section**>.  
New form control attributes like number, date, time, calendar, and range.  
New graphic elements: <**svg**> and <**canvas**>.  
New multimedia elements: <**audio**> and <**video**>.  

##Elements removed
Tags removed since HTML5 and their replacements  

|    Removed     | Replacement |
| -------------- |:-----------:|
| <**acronym**>  | <abbr>      |
| <**applet**>   | <object>    |
| <**basefont**> | CSS         |
| <**big**>      | CSS         |
| <**center**>   | CSS         |
| <**dir**>      | <ul>        |
| <**font**>     | CSS         |
| <**frame**>    |             |
| <**frameset**> |             |
| <**noframes**> |             |
| <**strike**>   | CSS         |
| <**tt**>       | CSS         |

<!--##Added-->
<!--|   New Elements    | Definition                                                                                	|-->
<!--|-----------------	|:-------------------------------------------------------------------------------------------:|-->
<!--| <**article**>    	| Defines an article in the document                                                        	|-->
<!--| <**aside**>      	| Defines content aside from the page content                                               	|-->
<!--| <**bdi**>        	| Defines a part of text that might be formatted in a different direction from other text   	|-->
<!--| <**details**>    	| Defines additional details that the user can view or hide                                 	|-->
<!--| <**dialog**>     	| Defines a dialog box or window                                                            	|-->
<!--| <**figcaption**> 	| Defines a caption for a <figure> element                                                  	|-->
<!--| <**figure**>     	| Defines self-contained content, like illustrations, diagrams, photos, code listings, etc. 	|-->
<!--| <**footer**>     	| Defines a footer for the document or a section                                            	|-->
<!--| <**header**>     	| Defines a header for the document or a section                                            	|-->
<!--| <**main**>       	| Defines the main content of a document                                                    	|-->
<!--| <**mark**>       	| Defines marked or highlighted text                                                        	|-->
<!--| <**menuitem**>   	| Defines a command/menu item that the user can invoke from a popup menu                    	|-->
<!--| <**meter**>      	| Defines a scalar measurement within a known range (a gauge)                               	|-->
<!--| <**nav**>        	| Defines navigation links in the document                                                  	|-->
<!--| <**progress**>   	| Defines the progress of a task                                                            	|-->
<!--| <**rp**>         	| Defines what to show in browsers that do not support ruby annotations                     	|-->
<!--| <**rt**>         	| Defines an explanation/pronunciation of characters (for East Asian typography)            	|-->
<!--| <**ruby**>       	| Defines a ruby annotation (for East Asian typography)                                     	|-->
<!--| <**section**>    	| Defines a section in the document                                                         	|-->
<!--| <**summary**>    	| Defines a visible heading for a <details> element                                         	|-->
<!--| <**time**>       	| Defines a date/time                                                                       	|-->
<!--| <**wbr**>        	| Defines a possible line-break                                                             	|-->

##Arrtibute syntax
Type: Empty, Unquoted, Single-quoted, and Double-quoted.  

| Syntax       | Result      |
|--------------|:-----------:|
| ''John Doe'' | None        |
| '"John Doe"' | "John Doe"  |
| "'John Doe'" | 'John Doe'  |
| ""John Doe"" | None        |

##New Semantic Elements
Why? 
1. Readability is way much better than a cluster of <**div**>;  
2. Allow search engines to identify the correct pages;  
3. Allows data to be shared and reused across applications, enterprises, and communities.  
<**div**>: A generic container element for styling purposes or as a convenience for scripting;   
<**section**>: Used to represent a group of related elements, consisting a part of a program;  
<**article**>: Used to hold an INDEPENDENT unit, making sense on its own.  



##Browser support
Browser support: http://www.w3schools.com/html/html5_browsers.asp  
Migration from HTML4 to HTML5: http://www.w3schools.com/html/html5_migration.asp  
```
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
```

h1 and p will be displayed in default format  
http://html5.group.iteye.com/group/wiki/3293-html5  
```
<div class="outer">
     <aaa>
         <h1>title</h1>
         <p>text</p>
     </aaa>
</div>
```






##Video

```
<!DOCTYPE html>
<html>
<body>

<video width="420" controls>
  <source src="mov_bbb.mp4" type="video/mp4">
  <source src="mov_bbb.ogg" type="video/ogg">
 Your browser does not support the video tag.
</video>

</body>
</html>
```
