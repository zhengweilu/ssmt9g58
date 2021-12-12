package com.entity.view;

import com.entity.DabiantongzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 答辩通知
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
@TableName("dabiantongzhi")
public class DabiantongzhiView  extends DabiantongzhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DabiantongzhiView(){
	}
 
 	public DabiantongzhiView(DabiantongzhiEntity dabiantongzhiEntity){
 	try {
			BeanUtils.copyProperties(this, dabiantongzhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
