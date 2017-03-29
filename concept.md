## RESTful
(Resource) REpresentational State Transfer is a designed pattern built on HTTP, as long as the procedure satisfy certain principles, we could say that this procedure is RESTful.  

In traditional website we use `/getBook.action?id=1` (verb) to get resources. It's a procedural-oriented style. However, in RESTful, we use noun to specify where the resources are `/books/1` and apply proper request to access the same endpoint, such as GET, POST, PUT, and DELETE. It's a resource-oriented style.  

1. Representations
2. Messages
3. URIs
4. Uniform interface
5. Stateless: The server does not keep any session information. If serves keep session info, then a request has to be handled by a particular server. To achieve, a RESTful request should contain all info that servers might need. Without this burden on the server side, any server in the cluster can handle this request. Since we no longer need to worry about the context of the request, it dramatically reduces the complexity and improves the efficiency.
6. Links between resources
7. Caching 

### Design Server API
1. URL root: 
  https://example.org/api/
2. Versoning: 
  https://example.org/api/v1/
3. Use noun rather than verb, pluralrather than singular

    1. Bad practices:   
    /getProducts  
    /listOrders  
    /retrieveClientByOrder?orderId=1  

    2. Good practices:  
    GET /products : will return the list of all products  
    POST /products : will add a product to the collection  
    GET /products/4 : will retrieve product #4PATCH/  
    PUT /products/4 : will update product #4  
    
4. Encrypt the payload before send out if necessary


http://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm



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

## Ajax
http://www.ibm.com/developerworks/library/j-ajax1/  
