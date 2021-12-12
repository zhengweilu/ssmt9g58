package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LunwenpingfenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LunwenpingfenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LunwenpingfenView;


/**
 * 论文评分
 *
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public interface LunwenpingfenService extends IService<LunwenpingfenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LunwenpingfenVO> selectListVO(Wrapper<LunwenpingfenEntity> wrapper);
   	
   	LunwenpingfenVO selectVO(@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);
   	
   	List<LunwenpingfenView> selectListView(Wrapper<LunwenpingfenEntity> wrapper);
   	
   	LunwenpingfenView selectView(@Param("ew") Wrapper<LunwenpingfenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LunwenpingfenEntity> wrapper);
   	
}

