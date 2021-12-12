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

import com.entity.ChengjipingdingEntity;
import com.entity.view.ChengjipingdingView;

import com.service.ChengjipingdingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 成绩评定
 * 后端接口
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
@RestController//产生对象放到spring容器当中
@RequestMapping("/chengjipingding")//前端点击功能的时候能根据地址找到相应的方法来执行
public class ChengjipingdingController {
    @Autowired//把chengjipingdingService对象从容器中自动注入过来
    private ChengjipingdingService chengjipingdingService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChengjipingdingEntity chengjipingding, HttpServletRequest request){
					//当请求的参数名称与controller的业务方法参数名称不一致时，就需要通过@RequestParam注解显示的绑定
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			chengjipingding.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
			chengjipingding.setXuejihao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ChengjipingdingEntity> ew = new EntityWrapper<ChengjipingdingEntity>();
		PageUtils page = chengjipingdingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chengjipingding), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChengjipingdingEntity chengjipingding, HttpServletRequest request){
        EntityWrapper<ChengjipingdingEntity> ew = new EntityWrapper<ChengjipingdingEntity>();
		PageUtils page = chengjipingdingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chengjipingding), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChengjipingdingEntity chengjipingding){
       	EntityWrapper<ChengjipingdingEntity> ew = new EntityWrapper<ChengjipingdingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chengjipingding, "chengjipingding")); 
        return R.ok().put("data", chengjipingdingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChengjipingdingEntity chengjipingding){
        EntityWrapper< ChengjipingdingEntity> ew = new EntityWrapper< ChengjipingdingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chengjipingding, "chengjipingding")); 
		ChengjipingdingView chengjipingdingView =  chengjipingdingService.selectView(ew);
		return R.ok("查询成绩评定成功").put("data", chengjipingdingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChengjipingdingEntity chengjipingding = chengjipingdingService.selectById(id);
        return R.ok().put("data", chengjipingding);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChengjipingdingEntity chengjipingding = chengjipingdingService.selectById(id);
        return R.ok().put("data", chengjipingding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChengjipingdingEntity chengjipingding, HttpServletRequest request){
    	chengjipingding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chengjipingding);

        chengjipingdingService.insert(chengjipingding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChengjipingdingEntity chengjipingding, HttpServletRequest request){
    	chengjipingding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chengjipingding);

        chengjipingdingService.insert(chengjipingding);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ChengjipingdingEntity chengjipingding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chengjipingding);
        chengjipingdingService.updateById(chengjipingding);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chengjipingdingService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<ChengjipingdingEntity> wrapper = new EntityWrapper<ChengjipingdingEntity>();
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

		int count = chengjipingdingService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
