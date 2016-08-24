##Bootstrap
Add <__link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/__> at the top to automatically resize your html page. Add "container-fluid" class to the all the elements that you want to organize (perhaps through a division).  
  
1. Auto picture fit: class="img-responsive" in image  
2. Center text class: class "text-center"
3. Default new button design: class "btn" with in button element  
4. Stretch the button to the max: "btn-block"  
5. Change color for buttons: "btn-primary" "btn-info" "btn-danger"  
6. Grid: Three buttons in a row:    
```
  <div class="row">
    <div class="col-xs-4"><button class="btn btn-block btn-primary">Like</button></div>
    <div class="col-xs-4"><button class="btn btn-block btn-info">Info</button></div>
    <div class="col-xs-4"><button class="btn btn-block btn-danger">Delete</button></div>
  </div>
```
7. Use span to change a part of an element:  
```
<p>Things cats <span class="text-danger">love</span>:</p>
```
8. Font Awesome icons
Add on the top: <_link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/_>  
In text: a button with "like" icon  
```
<button class="btn btn-block btn-primary"><i class="fa fa-thumbs-up"></i>Like</button>
```
