package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.QishouEntity;
import com.cl.entity.view.QishouView;

import com.cl.service.QishouService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 骑手
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-23 19:49:31
 */
@RestController
@RequestMapping("/qishou")
public class QishouController {
    @Autowired
    private QishouService qishouService;



    
	@Autowired
	private TokenService tokenService;
	
	/**
	 * 登录
	 */
	@IgnoreAuth
	@RequestMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		QishouEntity u = qishouService.selectOne(new EntityWrapper<QishouEntity>().eq("qishouzhanghao", username));
        if(u==null || !u.getMima().equals(password)) {
            return R.error("账号或密码不正确");
        }
        if(!"是".equals(u.getSfsh())) return R.error("账号已锁定，请联系管理员审核。");
		String token = tokenService.generateToken(u.getId(), username,"qishou",  "管理员" );
		return R.ok().put("token", token);
	}


	
	/**
     * 注册
     */
	@IgnoreAuth
    @RequestMapping("/register")
    public R register(@RequestBody QishouEntity qishou){
    	//ValidatorUtils.validateEntity(qishou);
    	QishouEntity u = qishouService.selectOne(new EntityWrapper<QishouEntity>().eq("qishouzhanghao", qishou.getQishouzhanghao()));
		if(u!=null) {
			return R.error("注册用户已存在");
		}
		Long uId = new Date().getTime();
		qishou.setId(uId);
        qishouService.insert(qishou);
        return R.ok();
    }

	
	/**
	 * 退出
	 */
	@RequestMapping("/logout")
	public R logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return R.ok("退出成功");
	}
	
	/**
     * 获取用户的session用户信息
     */
    @RequestMapping("/session")
    public R getCurrUser(HttpServletRequest request){
    	Long id = (Long)request.getSession().getAttribute("userId");
        QishouEntity u = qishouService.selectById(id);
        return R.ok().put("data", u);
    }
    
    /**
     * 密码重置
     */
    @IgnoreAuth
	@RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
    	QishouEntity u = qishouService.selectOne(new EntityWrapper<QishouEntity>().eq("qishouzhanghao", username));
    	if(u==null) {
    		return R.error("账号不存在");
    	}
        u.setMima("123456");
        qishouService.updateById(u);
        return R.ok("密码已重置为：123456");
    }


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QishouEntity qishou,
		HttpServletRequest request){
        EntityWrapper<QishouEntity> ew = new EntityWrapper<QishouEntity>();

		PageUtils page = qishouService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qishou), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QishouEntity qishou, 
		HttpServletRequest request){
        EntityWrapper<QishouEntity> ew = new EntityWrapper<QishouEntity>();

		PageUtils page = qishouService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qishou), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QishouEntity qishou){
       	EntityWrapper<QishouEntity> ew = new EntityWrapper<QishouEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qishou, "qishou")); 
        return R.ok().put("data", qishouService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QishouEntity qishou){
        EntityWrapper< QishouEntity> ew = new EntityWrapper< QishouEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qishou, "qishou")); 
		QishouView qishouView =  qishouService.selectView(ew);
		return R.ok("查询骑手成功").put("data", qishouView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QishouEntity qishou = qishouService.selectById(id);
		qishou = qishouService.selectView(new EntityWrapper<QishouEntity>().eq("id", id));
        return R.ok().put("data", qishou);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QishouEntity qishou = qishouService.selectById(id);
		qishou = qishouService.selectView(new EntityWrapper<QishouEntity>().eq("id", id));
        return R.ok().put("data", qishou);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QishouEntity qishou, HttpServletRequest request){
    	qishou.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qishou);
    	QishouEntity u = qishouService.selectOne(new EntityWrapper<QishouEntity>().eq("qishouzhanghao", qishou.getQishouzhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		qishou.setId(new Date().getTime());
        qishouService.insert(qishou);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QishouEntity qishou, HttpServletRequest request){
    	qishou.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qishou);
    	QishouEntity u = qishouService.selectOne(new EntityWrapper<QishouEntity>().eq("qishouzhanghao", qishou.getQishouzhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		qishou.setId(new Date().getTime());
        qishouService.insert(qishou);
        return R.ok();
    }

     /**
     * 获取用户密保
     */
    @RequestMapping("/security")
    @IgnoreAuth
    public R security(@RequestParam String username){
        QishouEntity qishou = qishouService.selectOne(new EntityWrapper<QishouEntity>().eq("qishouzhanghao", username));
        return R.ok().put("data", qishou);
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @IgnoreAuth
    public R update(@RequestBody QishouEntity qishou, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qishou);
        qishouService.updateById(qishou);//全部更新
        return R.ok();
    }

    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf){
        List<QishouEntity> list = new ArrayList<QishouEntity>();
        for(Long id : ids) {
            QishouEntity qishou = qishouService.selectById(id);
            qishou.setSfsh(sfsh);
            qishou.setShhf(shhf);
            list.add(qishou);
        }
        qishouService.updateBatchById(list);
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        qishouService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
