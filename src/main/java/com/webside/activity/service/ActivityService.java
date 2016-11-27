package com.webside.activity.service;

import java.util.List;
import java.util.Map;

import com.webside.activity.model.ActivityEntity;

public interface ActivityService {

	List<ActivityEntity> queryListByPage(Map<String, Object> parameters);

}
