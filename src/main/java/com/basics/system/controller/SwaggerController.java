package com.basics.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.basics.framework.web.controller.BaseController;

/**
 * swagger 接口
 * 
 * @author basics
 */
@Controller
@RequestMapping("/tool/swagger")
public class SwaggerController extends BaseController {
	@GetMapping()
	public String index() {
		return redirect("/swagger-ui.html");
	}
}
