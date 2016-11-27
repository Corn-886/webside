package com.webside.member.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.webside.base.basemapper.BaseMapper;
import com.webside.member.model.MemberEntity;
import com.webside.user.model.UserEntity;
@Repository
public interface MemberMapper  extends BaseMapper<MemberEntity, Long> {


}
