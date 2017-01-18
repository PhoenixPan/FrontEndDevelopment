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

  /*Star selector: all elements*/
  * {
   margin: 0;
   padding: 0;
  }

  /*ID + Class selector*/
  #id-selector.class-selector {
    background-color: yellow;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<p id="id-selector">ID selector: Green</p>
<p class="class-selector">ID selector: Red</p>

/*Multiple classes*/
<p class="class1 class2">ID selector: Red</p>
```

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
