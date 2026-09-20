package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.PeisongwanchengEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.PeisongwanchengView;


/**
 * 配送完成
 *
 * @author 
 * @email 
 * @date 2024-03-23 19:49:31
 */
public interface PeisongwanchengService extends IService<PeisongwanchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PeisongwanchengView> selectListView(Wrapper<PeisongwanchengEntity> wrapper);
   	
   	PeisongwanchengView selectView(@Param("ew") Wrapper<PeisongwanchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PeisongwanchengEntity> wrapper);
   	

}

