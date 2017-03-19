## JSON 
```
<p id="demo"></p>

<script>
var text = '{"employees":[' +
'{"firstName":"John","lastName":"Doe" },' +
'{"firstName":"Anna","lastName":"Smith" },' +
'{"firstName":"Peter","lastName":"Jones" }]}';

obj = JSON.parse(text);
document.getElementById("demo").innerHTML =
obj.employees[1].firstName + " " + obj.employees[1].lastName;
</script>

```
```
$.getJSON("fmc_ideas.json", function(json) {
    var range = json.fmc_ideas.length;
    var randomNum = getRandom(random, range);
    for (i = 0; i < random; i++) {
        console.log(json.fmc_ideas[randomNum[i]].title);
    }
})
```
