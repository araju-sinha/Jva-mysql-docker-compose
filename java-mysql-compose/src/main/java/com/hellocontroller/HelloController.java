package com.hellocontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("/")
	public String displayData()
	{
		return "Hello, This is sample java springboot applicatio for doocker-compose";
	}
	
	@RequestMapping("/data")
	public String dataDisplay()
	{
		return "Hello, This is sample java springboot application";
	}

}
