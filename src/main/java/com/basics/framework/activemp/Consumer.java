package com.basics.framework.activemp;

import com.basics.framework.shiro.service.PasswordService;
import org.apache.activemq.command.ActiveMQQueue;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

/**
 * 消费者
 */
@Component
public class Consumer {

	@JmsListener(destination = "NEW_DE_TOKEN_QUEUE", containerFactory = "jmsListenerContainerQueue")
	public void receiveStringQueue(String text) throws Exception {
		System.out.println("消费者Consumer收到的报文为:" + text);
	}

}
