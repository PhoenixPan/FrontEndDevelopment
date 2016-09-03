#Asynchronous JavaScript and XML
Ajax isn't a technology, it's more of a pattern.  

##Features  
1. Dynamically update a website without reloading the entire page.  
2. Dramatically decrease the data that needs to be transferred and allow a part of execution been completed on clint side.  
3. Dropback: hard to move back the page.  

##Flow  
1. On client side, create a JavaScript object called XMLHttpRequest to perform HTTP request and parse server response;  
2. Set on the XMLHttpRequest object the HTML method for GET or POST request and the destination URL;  
2. Dispatch XMLHttpRequest asynchronously and register a callback function for each request;  
3. The control returns to the browser, which keeps interacting with the user;  
4. On server, the Java Web server parses the request just like any other HttpServletResponse: the serlet invokes necessary steps, serialize its response into XML, and write it to the HttpServletResponse;  
5. Back on client side, the server's response arrives and calls the callback function to process the XML document arrived;  
6. Update the user interface.  

##Simple implementation
1. Download the sample code from the end of [this article](http://www.ibm.com/developerworks/library/j-ajax1/#Listing 1);  
2. Create a new Java Web project;  
3. Put "src" - "developerworks" under "Source Packages";  
4. Put files in "web" folder under "Web Pages";  
5. Put "web.xml" under "Web Pages" - "WEB-INF".  
6. Run the program!  


##Questions
Why "application/xml" not "text/xml"?  
```
res.setContentType("application/xml");
res.getWriter().write(cartXml);
```

To make the program work for remove action, what does "remove&item" means?
```
 req.send("action=remove&item="+itemCode);
```

See demo code: 
