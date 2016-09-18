package com.webside.village.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.webside.village.model.Village;



public interface VillageService {

	public List<Village> queryListByPage(Map<String, Object> parameters);

	public int insert(Village village);

}
