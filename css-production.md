## Center contents 
## Horizontally 
1. margin: 0 auto;
2. width: calc(100% - 100px);

## Vertically
### Vertically align text in a div
1. Text will be vertically centered in its line
```
  line-height: (height of the element);
```

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
