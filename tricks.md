
## Ghost gap
It's actually the margin of <**p**>  
https://www.w3.org/TR/CSS21/box.html#collapsing-margins  
```
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="de" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <link rel="stylesheet" type="text/css" href="./style.css" />
    <title>Test</title>
	<style>
	html, body {
   background-color: #fff;
   margin: 0;
   padding: 0;
   width: 100%;
}

#page {
   background-image: url('bg_gradiant.png');
   background-repeat: repeat-y;
   width: 950px; /* 770px + 2 * 90px; */
   margin: 0 auto;
   padding-left: 90px;
}

#header {
   width: 770px;
   margin: 0;
   padding: 0;
}

#header #row1 {
   background-color: #9ab3ba;
   height: 50px;
}
#header #row2 {
   background-color: #517279;
   height: 50px;
}

#content {
   width: 770px;
   background-color: #d7e9ed;
}

#footer {
   background-color: #5eb6cc;
   width: 770px;
   height: 150px;
}
	</style>
</head>
<body>
<div id="page">
   <div id="header">
      <div id="row1"></div>
      <div id="row2"></div>
   </div>
   <div id="content">
      <p style="height: 600px">Beware of the Content</p>
   </div>
   <div id="footer">
   </div>
</div>
</body>
</html>
```
