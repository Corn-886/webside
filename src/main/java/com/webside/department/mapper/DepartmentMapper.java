package com.webside.department.mapper;

import org.springframework.stereotype.Repository;

import com.webside.base.basemapper.BaseMapper;
import com.webside.department.model.DepartmentEntity;

@Repository
public interface DepartmentMapper extends BaseMapper<DepartmentEntity, Long> {

}
