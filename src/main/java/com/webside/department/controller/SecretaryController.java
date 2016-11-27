package com.webside.department.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.webside.base.basecontroller.BaseController;
import com.webside.department.model.DepartmentEntity;
import com.webside.department.model.PositionEntity;
import com.webside.department.model.SecretaryEntity;
import com.webside.department.service.DepartmentService;
import com.webside.department.service.PositionService;
import com.webside.department.service.SecretaryService;
import com.webside.dtgrid.model.Pager;
import com.webside.dtgrid.util.ExportUtils;
import com.webside.exception.AjaxException;
import com.webside.exception.SystemException;
import com.webside.user.model.UserEntity;
import com.webside.util.Common;
import com.webside.village.model.Village;

@Controller
@Scope("prototype")
@RequestMapping(value = "/secretary/")
public class SecretaryController extends BaseController {

	@Autowired
	private SecretaryService secretaryService;
	@Autowired
	private PositionService positionService;
	@Autowired
	private DepartmentService departmentService;
	@RequestMapping("listUI.html")
	public String listUI() {
		try
		{
			return Common.BACKGROUND_PATH + "/department/secretary/list";
		}catch(Exception e)
		{
			throw new SystemException(e);
		}
	}
	/**
	 * 页面跳转
	 * @param model
	 * @return
	 */
	@RequestMapping("addUI.html")
	public String addUI(Model model) {
		try {
			List<DepartmentEntity> list_d=departmentService.queryListByPage(new HashMap<String, Object>());
			List<PositionEntity> list_p=positionService.queryListByPage(new HashMap<String, Object>());
			model.addAttribute("departmentList", list_d);
			model.addAttribute("positionList", list_p);
			return Common.BACKGROUND_PATH + "/department/secretary/form";
		} catch (Exception e) {
			throw new AjaxException(e);
		}

	}
	/**
	 * 保存到数据库操作
	 * @param secretary
	 * @return
	 * @throws AjaxException
	 */
	@RequestMapping("add.html")
	@ResponseBody
	public Object add(SecretaryEntity secretaryEntity) throws AjaxException {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			int result = this.secretaryService.insert(secretaryEntity);
			if (result == 1) {
				map.put("success", Boolean.TRUE);
				map.put("data", null);
				map.put("message", "添加成功");
			} else {
				map.put("success", Boolean.FALSE);
				map.put("data", null);
				map.put("message", "添加失败");
			}
			return map;
		} catch (Exception e) {
			throw new AjaxException(e);
		}
	}
	
	/**
	 * ajax分页动态加载模式
	 * 
	 * @param dtGridPager
	 *            Pager对象
	 * @throws Exception
	 */
	@RequestMapping(value = "/list.html", method = RequestMethod.POST)
	@ResponseBody
	public Object list(String gridPager, HttpServletResponse response) throws Exception {

		Map<String, Object> parameters = null;
		// 1、映射Pager对象
		Pager pager = JSON.parseObject(gridPager, Pager.class);
		// 2、设置查询参数
		// 获取登录用户
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		UserEntity sessionUser = (UserEntity) request.getSession().getAttribute("userSession");
		parameters = pager.getParameters();

		// 3、判断是否是导出操作
		if (pager.getIsExport()) {
			if (pager.getExportAllData()) {
				// 3.1、导出全部数据
				List<SecretaryEntity> list =secretaryService.queryListByPage(parameters);
				ExportUtils.exportAll(response, pager, list);
				return null;
			} else {
				// 3.2、导出当前页数据
				ExportUtils.export(response, pager);
				return null;
			}
		} else {
			// 设置分页，page里面包含了分页信息
			Page<Object> page = PageHelper.startPage(pager.getNowPage(), pager.getPageSize(), "v_id DESC");
			List<SecretaryEntity> list =secretaryService.queryListByPage(parameters);
			parameters.clear();
			parameters.put("isSuccess", Boolean.TRUE);
			parameters.put("nowPage", pager.getNowPage());
			parameters.put("pageSize", pager.getPageSize());
			parameters.put("pageCount", page.getPages());
			parameters.put("recordCount", page.getTotal());
			parameters.put("startRecord", page.getStartRow());
			// 列表展示数据
			parameters.put("exhibitDatas", list);
			return parameters;
		}
	}
}
