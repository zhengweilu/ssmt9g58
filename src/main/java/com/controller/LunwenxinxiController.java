package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.LunwenxinxiEntity;
import com.entity.view.LunwenxinxiView;

import com.service.LunwenxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 论文信息
 * 后端接口
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
@RestController
@RequestMapping("/lunwenxinxi")
public class LunwenxinxiController {
    @Autowired
    private LunwenxinxiService lunwenxinxiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,LunwenxinxiEntity lunwenxinxi, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			lunwenxinxi.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
			lunwenxinxi.setXuejihao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<LunwenxinxiEntity> ew = new EntityWrapper<LunwenxinxiEntity>();
		PageUtils page = lunwenxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lunwenxinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,LunwenxinxiEntity lunwenxinxi, HttpServletRequest request){
        EntityWrapper<LunwenxinxiEntity> ew = new EntityWrapper<LunwenxinxiEntity>();
		PageUtils page = lunwenxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lunwenxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( LunwenxinxiEntity lunwenxinxi){
       	EntityWrapper<LunwenxinxiEntity> ew = new EntityWrapper<LunwenxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( lunwenxinxi, "lunwenxinxi")); 
        return R.ok().put("data", lunwenxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(LunwenxinxiEntity lunwenxinxi){
        EntityWrapper< LunwenxinxiEntity> ew = new EntityWrapper< LunwenxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( lunwenxinxi, "lunwenxinxi")); 
		LunwenxinxiView lunwenxinxiView =  lunwenxinxiService.selectView(ew);
		return R.ok("查询论文信息成功").put("data", lunwenxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        LunwenxinxiEntity lunwenxinxi = lunwenxinxiService.selectById(id);
        return R.ok().put("data", lunwenxinxi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        LunwenxinxiEntity lunwenxinxi = lunwenxinxiService.selectById(id);
        return R.ok().put("data", lunwenxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody LunwenxinxiEntity lunwenxinxi, HttpServletRequest request){
    	lunwenxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(lunwenxinxi);

        lunwenxinxiService.insert(lunwenxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody LunwenxinxiEntity lunwenxinxi, HttpServletRequest request){
    	lunwenxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(lunwenxinxi);

        lunwenxinxiService.insert(lunwenxinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody LunwenxinxiEntity lunwenxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(lunwenxinxi);
        lunwenxinxiService.updateById(lunwenxinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        lunwenxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<LunwenxinxiEntity> wrapper = new EntityWrapper<LunwenxinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			wrapper.eq("jiaoshigonghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
			wrapper.eq("xuejihao", (String)request.getSession().getAttribute("username"));
		}

		int count = lunwenxinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
