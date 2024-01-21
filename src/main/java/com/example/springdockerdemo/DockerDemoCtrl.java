package com.example.springdockerdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerDemoCtrl {

	@GetMapping("/message")
	public String display() {
		return "welcome to docker...";
	}
	@GetMapping("/")
	public String home(){
		return "welcome to containerized app..";
	}
}
