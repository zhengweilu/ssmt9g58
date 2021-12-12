package com.dao;

import com.entity.DabiantongzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DabiantongzhiVO;
import com.entity.view.DabiantongzhiView;


/**
 * 答辩通知
 * 
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public interface DabiantongzhiDao extends BaseMapper<DabiantongzhiEntity> {
	
	List<DabiantongzhiVO> selectListVO(@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);
	
	DabiantongzhiVO selectVO(@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);
	
	List<DabiantongzhiView> selectListView(@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);

	List<DabiantongzhiView> selectListView(Pagination page,@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);
	
	DabiantongzhiView selectView(@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);
	
}
