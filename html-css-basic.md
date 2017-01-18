## Selector

```
<style>

  /*Element selector*/
  h1 {
    background-color:blue;
  }
  
  /*ID selector*/
  #id-selector {
    background-color:green;
  }
  
  /*Class selector*/
  .class-selector {
    background-color: red;
  }

  /*Attribute-based*/
  input[type="text"] {
    background: grey;
  }
  
  /*Star: all elements*/
  #id-selector * {
    margin: 0;
    padding: 0;
  }

  /*X:nthof-type(n)*/
  div:nth-of-type(3) p {
    font-size:25px;
  }
  
  /*X:first-child*/
  /*X:last-child*/
  /*X:only-child*/
  /*X:nth-child(n)*/
  
  /*X + Y: only the Ys immediately follow X*/ 
  /*X Y: all Y within X*/
  /*X > Y: only direct descendant Y of X*
  
  /*ID + Class selector*/
  #id-selector.class-selector {
    background-color: yellow;
  }

</style>

<p id="id-selector">ID selector: Green</p>
<p class="class-selector">ID selector: Red</p>

/*Multiple classes*/ 
<p class="class1 class2">ID selector: Red</p>
```
The 30 CSS Selectors You Must Memorize: https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048  

## Tricks
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
