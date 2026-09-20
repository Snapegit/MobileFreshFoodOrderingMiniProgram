package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.PeisongwanchengDao;
import com.cl.entity.PeisongwanchengEntity;
import com.cl.service.PeisongwanchengService;
import com.cl.entity.view.PeisongwanchengView;

@Service("peisongwanchengService")
public class PeisongwanchengServiceImpl extends ServiceImpl<PeisongwanchengDao, PeisongwanchengEntity> implements PeisongwanchengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PeisongwanchengEntity> page = this.selectPage(
                new Query<PeisongwanchengEntity>(params).getPage(),
                new EntityWrapper<PeisongwanchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PeisongwanchengEntity> wrapper) {
		  Page<PeisongwanchengView> page =new Query<PeisongwanchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<PeisongwanchengView> selectListView(Wrapper<PeisongwanchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PeisongwanchengView selectView(Wrapper<PeisongwanchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
