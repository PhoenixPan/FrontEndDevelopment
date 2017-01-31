# jQuery
is a popular javascript library.

1. Selector: We use $() to select elements in CSS style (similar to querySelector in javascript). The selector returns a list even there's only one item;
2. Manipulate css: $().css("property","value") or $().css(object);

  ```
  var styles = {
    backgroundColor: "pink", // It's illegal to use "-" in between, so we use camel case
    fontSize: "100px"
  };
  ```
3. Next

```
<script>
  $(document).ready(function() {
    $("button").addClass("animated bounce");       // by type, manipulate all button elements
    $(".well").addClass("animated shake");         // by class, manipulate all elements of well class
    $("#target3").addClass("animated fadeOut");    // by id, manipulate element with certain id
    $("button").removeClass("btn-default");        // remove class
    $("#target1").css("color", "blue");            // change CSS elements
    $("#target4").html("<em>#target4</em>");       // change HTML elements
    $("#target4").remove();                        // remove HTML elements
    $("#target2").appendTo("#right-well")          // move HTML elements
    $("#target5").clone().appendTo("#left-well");  // clone HTML elements
    $("#target1").parent().css("background-color","red");  // manipulate parent
    $("#right-well").children().css("color","orange");     // manipulate children
    $(".target:nth-child(2)").addClass("animated bounce"); // give the second element the bounce class
    $(".target:even").addClass("animated bounce");         // target all the even-numbered elements with class target
    $("body").addClass("animated hinge");
  });
</script>

<!-- Only change code above this line. -->
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1">#target1</button>
        <button class="btn btn-default target" id="target2">#target2</button>
        <button class="btn btn-default target" id="target3">#target3</button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4">#target4</button>
        <button class="btn btn-default target" id="target5">#target5</button>
        <button class="btn btn-default target" id="target6">#target6</button>
      </div>
    </div>
  </div>
</div>
```
