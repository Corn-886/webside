package com.webside.activity.mapper;

import org.springframework.stereotype.Repository;

import com.webside.activity.model.ActivityEntity;
import com.webside.activity.model.FileEntity;
import com.webside.base.basemapper.BaseMapper;

@Repository
public interface FileMapper extends BaseMapper<FileEntity, Long> {

}
