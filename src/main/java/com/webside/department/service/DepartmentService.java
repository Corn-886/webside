package com.webside.department.service;

import java.util.List;
import java.util.Map;

import com.webside.department.model.DepartmentEntity;


public interface DepartmentService {
	public List<DepartmentEntity> queryListByPage(Map<String, Object> parameters);

	public int insert(DepartmentEntity departmentEntity);
}
