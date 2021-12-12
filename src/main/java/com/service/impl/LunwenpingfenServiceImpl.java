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


import com.dao.LunwenpingfenDao;
import com.entity.LunwenpingfenEntity;
import com.service.LunwenpingfenService;
import com.entity.vo.LunwenpingfenVO;
import com.entity.view.LunwenpingfenView;

@Service("lunwenpingfenService")
public class LunwenpingfenServiceImpl extends ServiceImpl<LunwenpingfenDao, LunwenpingfenEntity> implements LunwenpingfenService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LunwenpingfenEntity> page = this.selectPage(
                new Query<LunwenpingfenEntity>(params).getPage(),
                new EntityWrapper<LunwenpingfenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LunwenpingfenEntity> wrapper) {
		  Page<LunwenpingfenView> page =new Query<LunwenpingfenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LunwenpingfenVO> selectListVO(Wrapper<LunwenpingfenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LunwenpingfenVO selectVO(Wrapper<LunwenpingfenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LunwenpingfenView> selectListView(Wrapper<LunwenpingfenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LunwenpingfenView selectView(Wrapper<LunwenpingfenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
