html
```
<div class="feedback-container">
  <div class="feedback-stars-container">
    <input type="radio" name="rating" id="st1" value="1" />
    <label for="st1"></label>
    <input type="radio" name="rating" id="st2" value="2" />
    <label for="st2"></label>
    <input type="radio" name="rating" id="st3" value="3" />
    <label for="st3"></label>
    <input type="radio" name="rating" id="st4" value="4" />
    <label for="st4"></label>
    <input type="radio" name="rating" id="st5" value="5" />
    <label for="st5"></label>  
  </div>
</div>
```


css
```
.feedback-stars-container {
  position: relative;
  display: inline-block;
  border: none;
  font-size: 16px;
  margin: 30px auto;
  left: 50%;
  transform: translateX(-50%);
}

.feedback-stars-container input {
  border: 0;
  width: 1px;
  height: 1px;
  overflow: hidden;
  position: absolute !important;
  /*clip: rect(1px 1px 1px 1px);*/
  /*clip: rect(1px, 1px, 1px, 1px);*/
  opacity: 0;
}

.feedback-stars-container label {
  position: relative;
  float: right;
  color: #C8C8C8;
}

.feedback-stars-container label:before {
  margin: 5px;
  content: "\f005";
  font-family: FontAwesome;
  display: inline-block;
  font-size: 1.5em;
  color: #ccc;
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
}

.feedback-stars-container input:checked ~ label:before {
  color: #FFC107;
}

.feedback-stars-container label:hover ~ label:before {
  color: #ffdb70;
}

.feedback-stars-container label:hover:before {
  color: #FFC107;
}
```
