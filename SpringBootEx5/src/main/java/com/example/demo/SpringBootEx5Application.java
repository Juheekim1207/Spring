package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.example.demo","test.*"})
public class SpringBootEx5Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootEx5Application.class, args);
	}

}
