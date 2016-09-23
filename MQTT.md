# The order of importing scripts matter!
If "client" uses functions from "mqttws31", import it later. Otherwise an "class not defined" error will raise.  
```
<script type="text/javascript" src="mqttws31.js"></script>
<script type="text/javascript" language="javascript" src="client.js"></script>
```
