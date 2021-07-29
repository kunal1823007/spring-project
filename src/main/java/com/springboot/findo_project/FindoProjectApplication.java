package com.springboot.findo_project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan
public class FindoProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FindoProjectApplication.class, args);
	}
}