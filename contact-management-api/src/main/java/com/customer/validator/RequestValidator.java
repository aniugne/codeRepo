package com.customer.validator;

import java.io.InputStream;

import org.everit.json.schema.Schema;
import org.everit.json.schema.ValidationException;
import org.everit.json.schema.loader.SchemaLoader;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.mule.api.MuleEventContext;
import org.mule.api.lifecycle.Callable;

public class RequestValidator  implements Callable{
	
	
	public synchronized String onCall(MuleEventContext context) throws Exception {
		
		String request=context.getMessage().getPayloadAsString();
		String schemaName=context.getMessage().getInvocationProperty("schemaName");
		System.out.println("Inside request validator...");
		StringBuilder sb = new StringBuilder();
		InputStream inputStream =RequestValidator.class.getResourceAsStream("/schemas/" + schemaName);
		 JSONObject rawSchema = new JSONObject(new JSONTokener(inputStream));
		 Schema schema = SchemaLoader.load(rawSchema);
		 try {
		  schema.validate(new JSONObject(request)); // throws a ValidationException if this object is invalid
		 } catch (ValidationException e) {
		  
		  sb.append(e.getMessage());
		  for (ValidationException ee : e.getCausingExceptions())
		   sb.append("\n").append(ee.getMessage());
		 }
			System.out.println("Validation Response::"+sb.toString());
		return sb.toString();
	}

}
