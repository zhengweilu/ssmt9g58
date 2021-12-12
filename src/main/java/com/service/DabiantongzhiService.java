package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DabiantongzhiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DabiantongzhiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DabiantongzhiView;


/**
 * 答辩通知
 *
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public interface DabiantongzhiService extends IService<DabiantongzhiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DabiantongzhiVO> selectListVO(Wrapper<DabiantongzhiEntity> wrapper);
   	
   	DabiantongzhiVO selectVO(@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);
   	
   	List<DabiantongzhiView> selectListView(Wrapper<DabiantongzhiEntity> wrapper);
   	
   	DabiantongzhiView selectView(@Param("ew") Wrapper<DabiantongzhiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DabiantongzhiEntity> wrapper);
   	
}

