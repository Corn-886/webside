package com.webside.activity.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webside.activity.mapper.ActivityMapper;
import com.webside.activity.model.ActivityEntity;
import com.webside.activity.service.ActivityService;
import com.webside.base.baseservice.impl.AbstractService;
import com.webside.department.model.DepartmentEntity;
import com.webside.department.service.DepartmentService;

@Service("activityService")
public class ActivityServiceImpl  extends AbstractService<ActivityEntity, Long> implements ActivityService{
	@Autowired
	private ActivityMapper activityMapper;
	//这句必须要加上。不然会报空指针异常，因为在实际调用的时候不是BaseMapper调用，而是具体的mapper
		@Autowired
		public void setBaseMapper() {
			super.setBaseMapper(activityMapper);
		}
	
}
