%dw 2.0
output application/json
---
flatten(vars.acc ++ [
		payload.*index map {
			"data":vars.incomingRequest[$],
			"error_descriprion" : vars.failedRecords.results[$]
		} 
	])