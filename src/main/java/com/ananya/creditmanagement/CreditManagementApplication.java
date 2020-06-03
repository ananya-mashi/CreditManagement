package com.ananya.creditmanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.ananya.creditmanagement")
public class CreditManagementApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(CreditManagementApplication.class, args);
		
	}
	@Override
	protected SpringApplicationBuilder configure( SpringApplicationBuilder  builder) {
		return builder.sources(CreditManagementApplication.class);
	}

}
