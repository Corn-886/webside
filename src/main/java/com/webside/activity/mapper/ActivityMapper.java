package com.webside.activity.mapper;

import org.springframework.stereotype.Repository;

import com.webside.activity.model.ActivityEntity;
import com.webside.base.basemapper.BaseMapper;
import com.webside.member.model.MemberEntity;

@Repository
public interface ActivityMapper extends BaseMapper<ActivityEntity, Long>{

}
