#HTML5

##Removed
Tags removed since HTML5 and their replacements  
Migration from HTML4 to HTML5: http://www.w3schools.com/html/html5_migration.asp  

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

##Added
|   New Elements    | Definition                                                                                	|
|-----------------	|:-------------------------------------------------------------------------------------------:|
| <**article**>    	| Defines an article in the document                                                        	|
| <**aside**>      	| Defines content aside from the page content                                               	|
| <**bdi**>        	| Defines a part of text that might be formatted in a different direction from other text   	|
| <**details**>    	| Defines additional details that the user can view or hide                                 	|
| <**dialog**>     	| Defines a dialog box or window                                                            	|
| <**figcaption**> 	| Defines a caption for a <figure> element                                                  	|
| <**figure**>     	| Defines self-contained content, like illustrations, diagrams, photos, code listings, etc. 	|
| <**footer**>     	| Defines a footer for the document or a section                                            	|
| <**header**>     	| Defines a header for the document or a section                                            	|
| <**main**>       	| Defines the main content of a document                                                    	|
| <**mark**>       	| Defines marked or highlighted text                                                        	|
| <**menuitem**>   	| Defines a command/menu item that the user can invoke from a popup menu                    	|
| <**meter**>      	| Defines a scalar measurement within a known range (a gauge)                               	|
| <**nav**>        	| Defines navigation links in the document                                                  	|
| <**progress**>   	| Defines the progress of a task                                                            	|
| <**rp**>         	| Defines what to show in browsers that do not support ruby annotations                     	|
| <**rt**>         	| Defines an explanation/pronunciation of characters (for East Asian typography)            	|
| <**ruby**>       	| Defines a ruby annotation (for East Asian typography)                                     	|
| <**section**>    	| Defines a section in the document                                                         	|
| <**summary**>    	| Defines a visible heading for a <details> element                                         	|
| <**time**>       	| Defines a date/time                                                                       	|
| <**wbr**>        	| Defines a possible line-break                                                             	|







Adjust to older browser  
```
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
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
