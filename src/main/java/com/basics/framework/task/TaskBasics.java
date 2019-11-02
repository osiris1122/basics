package com.basics.framework.task;

import com.alibaba.fastjson.JSONObject;
import com.basics.system.entity.CuCustomer;
import com.basics.system.service.CuCustomerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Component
@Transactional
public class TaskBasics {

	@Autowired
	private CuCustomerService customerService;



	@Scheduled(cron = "0 0/1 * * * ?")
	public void cancleTrade() {
//		List<CuCustomer> list = customerService.list();
//		list.forEach(customer -> {
//			log.info(JSONObject.toJSONString(customer));
//		});
	}

}
