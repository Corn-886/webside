package com.webside.member.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.webside.member.model.MemberEntity;
import com.webside.user.model.UserEntity;


public interface MemberService  {
	public List<MemberEntity> queryListByPage(Map<String, Object> parameter);

	public int insert(MemberEntity memberEntity);

	
}
