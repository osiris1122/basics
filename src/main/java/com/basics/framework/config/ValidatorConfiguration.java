package com.basics.framework.config;

import javax.validation.Validation;
import javax.validation.Validator;

import org.hibernate.validator.messageinterpolation.ResourceBundleMessageInterpolator;
import org.hibernate.validator.resourceloading.PlatformResourceBundleLocator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ValidatorConfiguration {
	@Bean
	public Validator validator() {
		Validator validator = Validation.byDefaultProvider().configure().addProperty("hibernate.validator.fail_fast", "true")
				.messageInterpolator(new ResourceBundleMessageInterpolator(new PlatformResourceBundleLocator("i18n/messages"))).buildValidatorFactory().getValidator();
		return validator;
	}

}