package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KetixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KetixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KetixinxiView;


/**
 * 课题信息
 *
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public interface KetixinxiService extends IService<KetixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KetixinxiVO> selectListVO(Wrapper<KetixinxiEntity> wrapper);
   	
   	KetixinxiVO selectVO(@Param("ew") Wrapper<KetixinxiEntity> wrapper);
   	
   	List<KetixinxiView> selectListView(Wrapper<KetixinxiEntity> wrapper);
   	
   	KetixinxiView selectView(@Param("ew") Wrapper<KetixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KetixinxiEntity> wrapper);
   	
}

