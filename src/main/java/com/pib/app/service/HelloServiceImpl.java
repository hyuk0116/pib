package com.pib.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pib.app.dao.HelloDAO;

@Service("helloService")
public class HelloServiceImpl implements HelloService {
	@Autowired
	private HelloDAO helloDAO;

	public void setHelloDAO(HelloDAO helloDAO) {
		this.helloDAO = helloDAO;
	}

	@Override
	public String hello() {
		return helloDAO.hello();
	}
}
