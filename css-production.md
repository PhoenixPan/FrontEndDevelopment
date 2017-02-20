## Center contents 
### Very center
1. position
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

### Block - Horizontally
1. margin: 0 auto;
2. width: calc(100% - 100px);
3. text-align: center; - works after making inner element inline-block. However, inner element will inherit text-align:center, you may want to make it back to text-align:initial

    ```
    #outer {
      width: 100%;
      text-align: center;
    }

    #inner {
      display: inline-block;
    }
    ```

### Block - Vertically
1. equal padding on top and bottom;

### Text - Horizontally 
1. text-align: center;

### Text - Vertically
1. line-height: (height of the element) - limitation: usually works for only one line



## Auto adjustment
1. max-width/max-height: use them to avoid the appearance of the scroll bar;

## Border
1. border: 0 / border: none: use border: 0. It's shorter and works fine on old browsers before IE9;   

## Others
1. Want transparent background but not texts? use rgba() instead of opacity;  


#### Remove hyperlink styles:
```
#move-down {
  color: white;
  text-decoration: none;
}
```

#### Remove default button effects when pressed (that blue circle)
```
#move-down:focus {
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
