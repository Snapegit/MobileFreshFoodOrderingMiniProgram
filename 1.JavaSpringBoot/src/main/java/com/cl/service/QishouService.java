package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.QishouEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.QishouView;


/**
 * 骑手
 *
 * @author 
 * @email 
 * @date 2024-03-23 19:49:31
 */
public interface QishouService extends IService<QishouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QishouView> selectListView(Wrapper<QishouEntity> wrapper);
   	
   	QishouView selectView(@Param("ew") Wrapper<QishouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QishouEntity> wrapper);
   	

}

