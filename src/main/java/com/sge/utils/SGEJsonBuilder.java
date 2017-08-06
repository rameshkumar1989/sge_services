package com.sge.utils;

import java.io.StringWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;

public class SGEJsonBuilder {

	private static final Logger logger = LoggerFactory.getLogger(SGEJsonBuilder.class);
	
	public static String toJson(Object obj) throws Exception {

		StringWriter objStream = new StringWriter();
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
			objectMapper.writeValue(objStream, obj);
		} catch (Exception e) {
			logger.error("Error in converting to json from oject ", e);
			throw e;
		}
		return objStream.toString();
	}

}
