package com.envisioncn.hellodocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicInteger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SpringBootApplication
@RestController
public class Application {
	
	private static Logger LOG = LoggerFactory.getLogger("tasklogger");
	
	private final static AtomicInteger counter = new AtomicInteger(1);

	@RequestMapping("/")
	public String home() {
		LOG.info("current access count is: " + counter.getAndIncrement());
		return "Hello Docker World";
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}
