## Center contents 
### All purpose
1. Use position

    ```
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%); /*move the element accordingly*/
    ```
    
2. Set the distances of all four directions to 0

    ```
    #outer {
      position: relative;
    }

    #inner {
      margin: auto;  
      position: absolute;
      left:0;
      right: 0;
      top: 0;
      bottom: 0;
    } 
    ```

3. inline-block with `text-align: center;` and `vertical-align: middle`

    ```
    #outer {
        height: 300px;
        line-height: 300px;
        text-align:center;
    }

    #inner {      
        display: inline-block;
        height:150px;
        line-height: normal;
        vertical-align: middle;
        width: 50%;
    }
    ```


### Block - Horizontally
1. margin: 0 auto;
2. width: calc(100% - 100px);

### Block - Vertically
1. equal padding on top and bottom;

### Text - Horizontally 
1. text-align: center;

### Text - Vertically
1. line-height: (height of the element) - limitation: usually works for only one line.

## Spacing
1. There are default spaces between inline-blocks (horizontal `<li>`, display: inline-block, etc). It's similar to spaces between letters, you need to connect the tags to remove the space.

  ```
  /*Use comments to connect*/
  <li>one</li><!--
  --><li>two</li><!--
  --><li>three</li>
  
  /*Connect tags*/
   <li>
   one</li><li>
   two</li><li>
   three</li>
   
  /*Remove the closing tag (ok for HTML5)*/
  /*Set font size to 0 in parent element*/
  ```

## Auto adjustment
1. max-width/max-height: use them to avoid the appearance of the scroll bar;

## Border
1. border: 0 / border: none: use border: 0. It's shorter and works fine on old browsers before IE9;   

## Others
1. Want transparent background but not texts? use rgba() instead of opacity;  


#### Remove hyperlink styles:
```
a {
  color: white;
  text-decoration: none;
}
```

#### Remove default button effects when pressed (that blue circle)
```
button:focus {
  outline:0;
}
```

#### Why 100vw cause x-axis overflow?
Since browsers currently vertical scroll bar as part of the view. If page contents are more than one page, causing the vertical scroll bar to appear, there will be an overflow on x-axis. Add this to prevent such overflow:
```
  height:100vh;
  width:100vw;
  max-width: 100%;   /*Solution 1*/
  overflow-x:hidden; /*Solution 2*/
```
However, if the element have no width-limit ancesters, simply use `width: 100%` to fit the window.
