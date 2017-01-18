##Selector

```
<style>

  /*ID selector*/
  #for-id-selector {
    background-color:green;
  }
  
  /*Class selector*/
  .for-class-selector {
    background-color: red;
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
</style>

<p id="for-id-selector">ID selector: Green</p>
<p class="for-class-selector">ID selector: Red</p>
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
