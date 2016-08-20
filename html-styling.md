##HTML styling

1. Override priority:  
!important(pink) > inline style(white) > id(orange) > bottom of style(blue) > top of style(pink)
```
<style>
  body {
    background-color: black;
    font-family: Monospace;
    color: green;
  }
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink !important;
  }
  .blue-text {
    color: blue;
  }
  
</style>
<h1 id="orange-text" class="pink-text blue-text" style = "color:white">Hello World!</h1>
```



```
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 20px 40px 20px 40px;  //top, right, bottom, left
    margin: 20px 40px 20px 40px;
  }
  
  .red-box {
    background-color: red;
    padding: 20px;
  }

  .green-box {
    background-color: green;
    padding: 10px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box green-box">padding</h5>
</div>
```
