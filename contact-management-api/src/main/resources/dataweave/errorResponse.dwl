%dw 1.0
%output application/json
---
{
	"Response": {
		"appName": "contact-management-prc-api",
		"api-method": flowVars.apiMethod,
		"status": "error",
		"error": {
			"correlationId": flowVars.correlationId,
			"type": flowVars.errorType,
			"message": flowVars.errorMessage
		}
	}
}