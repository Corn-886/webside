package com.webside.department.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webside.base.baseservice.impl.AbstractService;
import com.webside.department.mapper.DepartmentMapper;
import com.webside.department.model.DepartmentEntity;
import com.webside.department.service.DepartmentService;
import com.webside.user.model.UserEntity;
import com.webside.user.service.UserService;

@Service("departmentService")
public class DepartmentServiceImpl extends AbstractService<DepartmentEntity, Long> implements DepartmentService{
	@Autowired
	private DepartmentMapper departmentMapper;
	
	//这句必须要加上。不然会报空指针异常，因为在实际调用的时候不是BaseMapper调用，而是具体的mapper，这里为userMapper
	@Autowired
	public void setBaseMapper() {
		super.setBaseMapper(departmentMapper);
	}
}
