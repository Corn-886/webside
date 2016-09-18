package com.webside.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webside.base.basecontroller.BaseController;
import com.webside.exception.AjaxException;
import com.webside.util.Common;
import com.webside.util.PageUtil;

@Controller
@Scope("prototype")
@RequestMapping("/member/")
public class MemberController extends BaseController{

	
	@RequestMapping("listUI.html")
	public String listUI(Model model, HttpServletRequest request) {
		try {
			PageUtil page = new PageUtil();
			if (request.getParameterMap().containsKey("page")) {
				page.setPageNum(Integer.valueOf(request.getParameter("page")));
				page.setPageSize(Integer.valueOf(request.getParameter("rows")));
				page.setOrderByColumn(request.getParameter("sidx"));
				page.setOrderByType(request.getParameter("sord"));
			}
			model.addAttribute("page", page);
			return Common.BACKGROUND_PATH + "/member/list";
		} catch (Exception e) {
			throw new AjaxException(e);
		}
	}
}
