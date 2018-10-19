package com.example.demo.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/index")
public class IndexController {

	@RequestMapping("/hostName")
	public String getHostName() throws Exception {
		return InetAddress.getLocalHost().getHostName();
	}
}
