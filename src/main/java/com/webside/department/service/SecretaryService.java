package com.webside.department.service;

import java.util.List;
import java.util.Map;

import com.webside.department.model.DepartmentEntity;
import com.webside.department.model.SecretaryEntity;
import com.webside.village.model.Village;

public interface SecretaryService {

	List<SecretaryEntity> queryListByPage(Map<String, Object> parameters);

	int insert(SecretaryEntity secretaryEntity);

	

}
