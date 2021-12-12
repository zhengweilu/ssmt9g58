package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DabiantongzhiDao;
import com.entity.DabiantongzhiEntity;
import com.service.DabiantongzhiService;
import com.entity.vo.DabiantongzhiVO;
import com.entity.view.DabiantongzhiView;

@Service("dabiantongzhiService")
public class DabiantongzhiServiceImpl extends ServiceImpl<DabiantongzhiDao, DabiantongzhiEntity> implements DabiantongzhiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DabiantongzhiEntity> page = this.selectPage(
                new Query<DabiantongzhiEntity>(params).getPage(),
                new EntityWrapper<DabiantongzhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DabiantongzhiEntity> wrapper) {
		  Page<DabiantongzhiView> page =new Query<DabiantongzhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DabiantongzhiVO> selectListVO(Wrapper<DabiantongzhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DabiantongzhiVO selectVO(Wrapper<DabiantongzhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DabiantongzhiView> selectListView(Wrapper<DabiantongzhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DabiantongzhiView selectView(Wrapper<DabiantongzhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
