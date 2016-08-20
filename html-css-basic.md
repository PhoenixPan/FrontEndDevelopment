##Basic
```
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .red-text {
    color: red;
  }

  h2 {
    font-family: Lobster, Monospace;
  }

  p {
    font-size: 16px;
    font-family: Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }

  .smaller-image {
    width: 100px;
  }
  
  .silver-background {
    background-color:silver;
  }
  
  #cat-photo-form {
    background-color:green;
  }
  
</style>

<h2 class="red-text">CatPhotoApp</h2>

<!--<a href="#"> creates a dead link-->
<p> View more 
  <a href="http://www.freecatphotoapp.com">cat photos</a>
</p>

<a href = "#"><img class="smaller-image thick-green-border" src="https://bit.ly/fcc-relaxing-cat" alt="A cute orange cat lying on its back. "></a>

<p class="red-text">Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>

<div>
  <p>Things cats love:</p>
  <ul>
    <li>cat nip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
</div>

<form id = "cat-photo-form" action="/submit-cat-photo">
  <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
  <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
  <label><input type="checkbox" name="personality" checked> Loving</label>
  <label><input type="checkbox" name="personality"> Lazy</label>
  <label><input type="checkbox" name="personality"> Energetic</label>
  <input type="text" placeholder="cat photo URL" required>
  <button type="submit">Submit</button>
</form>

```

1. Change radius:  
```
border-radius: 50%; // Round
border-radius: 10px; 
```
2. Hyperlink for text and pitcure:  
```
<p>Click here for <a href="#">cat photos</a>.</p>   
<a href = "#"><img class="classA classB" src="https://bit.ly/fcc-relaxing-cat" alt="A cute orange cat. "></a>
```
3. Within style, use "." to indicate class and "#" to indicate id  

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
In text:
```
<button class="btn btn-block btn-primary"><i class="fa fa-thumbs-up"></i>Like</button>
```
