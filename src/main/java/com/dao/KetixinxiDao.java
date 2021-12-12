package com.dao;

import com.entity.KetixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KetixinxiVO;
import com.entity.view.KetixinxiView;


/**
 * 课题信息
 * 
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public interface KetixinxiDao extends BaseMapper<KetixinxiEntity> {
	
	List<KetixinxiVO> selectListVO(@Param("ew") Wrapper<KetixinxiEntity> wrapper);
	
	KetixinxiVO selectVO(@Param("ew") Wrapper<KetixinxiEntity> wrapper);
	
	List<KetixinxiView> selectListView(@Param("ew") Wrapper<KetixinxiEntity> wrapper);

	List<KetixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<KetixinxiEntity> wrapper);
	
	KetixinxiView selectView(@Param("ew") Wrapper<KetixinxiEntity> wrapper);
	
}
