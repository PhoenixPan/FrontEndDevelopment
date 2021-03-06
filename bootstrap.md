# Bootstrap

## How to "install"
Add a style link into the html file from either web or local sources.  
```
/*From web source*/
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

/*From local file*/
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
```
In addition, if you want your site looks nice on a mobile device, includ this line above <**title**> in your <**head**>:  
```
<meta name="viewport" content="width=device-width, initial-scale=1">
```

## What's next
At the top to automatically resize your html page. Add "container-fluid" class to the all the elements that you want to organize (perhaps through a division). 
  
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
Add on the top: 

  ```
  <_link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/_>
  ```
In line: a button with "like" icon  

  ```
  <button class="btn btn-block btn-primary"><i class="fa fa-thumbs-up"></i>Like</button>
  ```


## How to override
1. Placement of bootstrap link above: this order will allow mystyle to override bootstrap, but not if you change the order

  ```
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="mystyle.css">
  ```
2. add an id to add weight
3. important!: not recommended, as you may want to override your own code later


### Grid System
1. Grid needs to be within a container
2. Each row has 12 units
3. .col-xs/sm/md/lg: to different size of screen, phone -> tablets -> desktops(s/l).  
    It will change once it hits "sm" size, unless you specify "col-sm-6" as well.  
    If you want the same scale from large to medium, you only need to specify "col-md".  
    
  ```
    <!--In this case: lg:3, md:6, sm:6, xs 12--!>
   	<div class="container">
 		<div class="row">
 			<div class="col-lg-3 col-sm-6 test">Column 1</div>
 			<div class="col-lg-3 col-sm-6 test">Column 2</div>
 			<div class="col-lg-3 col-sm-6 test">Column 3</div>
 			<div class="col-lg-3 col-sm-6 test">Column 4</div>
 		</div>
 	</div>
  ```
4. If you specified correct column index (3,4,6), you only need one row as Bootstrap will figure out how many blokcs will be in one line.  

### container
1. container: responsive fixed width
2. container-fluid: spanning the entire width of your viewport

### form-group
1. .form-group: Wrap labels and controls in .form-group (in div) for an automatic spacing optimization
2. .form-control: All textual <**input**>, <**textarea**>, and <**select**> elements with .form-control are set to width: 100%; by default. If removed, elements will become browser default design (no corners, spacing, padding, etc.)
3. <**form class="form-inline"**>: makes this form in line

### navbar
The hight of navbar is by default decided by the elements inside. For instance, if elements have large top/bottom margin/padding, the navbar will adjust itself to include the elements.  
