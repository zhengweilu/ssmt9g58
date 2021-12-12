package com.dao;

import com.entity.LunwenpingfenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LunwenpingfenVO;
import com.entity.view.LunwenpingfenView;


/**
 * 论文评分
 * 
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public interface LunwenpingfenDao extends BaseMapper<LunwenpingfenEntity> {
	
	List<LunwenpingfenVO> selectListVO(@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);
	
	LunwenpingfenVO selectVO(@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);
	
	List<LunwenpingfenView> selectListView(@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);

	List<LunwenpingfenView> selectListView(Pagination page,@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);
	
	LunwenpingfenView selectView(@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);
	
}
