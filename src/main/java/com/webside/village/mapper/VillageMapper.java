package com.webside.village.mapper;

import org.springframework.stereotype.Repository;

import com.webside.base.basemapper.BaseMapper;
import com.webside.user.model.UserEntity;
import com.webside.village.model.Village;

@Repository
public interface VillageMapper extends BaseMapper<Village, Long> {

}
