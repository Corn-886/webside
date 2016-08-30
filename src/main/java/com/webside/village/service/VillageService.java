package com.webside.village.service;

import java.util.HashMap;
import java.util.List;

import com.webside.village.model.Village;



public interface VillageService {

	List<Village> queryListByPage(HashMap<String, Object> hashMap);

}
