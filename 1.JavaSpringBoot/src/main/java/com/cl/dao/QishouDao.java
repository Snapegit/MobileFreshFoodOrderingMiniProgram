package com.cl.dao;

import com.cl.entity.QishouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.QishouView;


/**
 * 骑手
 * 
 * @author 
 * @email 
 * @date 2024-03-23 19:49:31
 */
public interface QishouDao extends BaseMapper<QishouEntity> {
	
	List<QishouView> selectListView(@Param("ew") Wrapper<QishouEntity> wrapper);

	List<QishouView> selectListView(Pagination page,@Param("ew") Wrapper<QishouEntity> wrapper);
	
	QishouView selectView(@Param("ew") Wrapper<QishouEntity> wrapper);
	

}
