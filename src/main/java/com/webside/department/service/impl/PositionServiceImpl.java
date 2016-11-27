package com.webside.department.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webside.base.baseservice.impl.AbstractService;
import com.webside.department.mapper.PositionMapper;
import com.webside.department.model.PositionEntity;
import com.webside.department.service.PositionService;
import com.webside.user.model.UserEntity;
import com.webside.user.service.UserService;

@Service("positionService")
public class PositionServiceImpl extends AbstractService<PositionEntity, Long> implements PositionService {
	@Autowired
	private PositionMapper positionMapper;
	//这句必须要加上。不然会报空指针异常，因为在实际调用的时候不是BaseMapper调用，而是具体的mapper，这里为userMapper
	@Autowired
	public void setBaseMapper() {
		super.setBaseMapper(positionMapper);
	}
}
