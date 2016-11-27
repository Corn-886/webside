package com.webside.member.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webside.base.baseservice.impl.AbstractService;
import com.webside.member.mapper.MemberMapper;
import com.webside.member.model.MemberEntity;
import com.webside.member.service.MemberService;
import com.webside.user.model.UserEntity;
@Service("MemberService")
public class MemberServiceImpl extends  AbstractService<MemberEntity, Long> implements MemberService {
	@Autowired
	private MemberMapper membermapper;
	//这句必须要加上。不然会报空指针异常，因为在实际调用的时候不是BaseMapper调用，而是具体的mapper，这里为userMapper
	@Autowired
	public void setBaseMapper() {
		super.setBaseMapper(membermapper);
	}
	
	
	
	
}
