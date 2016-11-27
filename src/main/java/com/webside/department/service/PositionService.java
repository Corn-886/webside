package com.webside.department.service;

import java.util.List;
import java.util.Map;

import com.webside.department.model.PositionEntity;

public interface PositionService {

	List<PositionEntity> queryListByPage(Map<String, Object> parameters);

	int insert(PositionEntity positionEntity);

}
