package com.webside.department.mapper;

import org.springframework.stereotype.Repository;

import com.webside.base.basemapper.BaseMapper;
import com.webside.department.model.PositionEntity;
import com.webside.user.model.UserEntity;

@Repository
public interface PositionMapper extends BaseMapper<PositionEntity, Long>{

}
