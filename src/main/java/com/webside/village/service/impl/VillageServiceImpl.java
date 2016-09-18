package com.webside.village.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webside.base.baseservice.impl.AbstractService;
import com.webside.user.model.UserEntity;
import com.webside.village.mapper.VillageMapper;
import com.webside.village.model.Village;
import com.webside.village.service.VillageService;

@Service("VilalgeService")
public class VillageServiceImpl extends AbstractService<Village, Long> implements VillageService {
	@Autowired
	VillageMapper villageMapper;

	// 这句必须要加上。不然会报空指针异常，因为在实际调用的时候不是BaseMapper调用，而是具体的mapper，这里为userMapper
	@Autowired
	public void setBaseMapper() {
		super.setBaseMapper(villageMapper);
	}




	
}
