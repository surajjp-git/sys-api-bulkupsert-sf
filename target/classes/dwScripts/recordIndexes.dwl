%dw 2.0
output application/json skipNullOn = "everywhere"
---
(payload.results.*result  map (value, index) -> {
     ("index":index)  if (value.success == "false") 
}) filter (value, index) -> (value.index != null)