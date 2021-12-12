package com.entity.view;

import com.entity.LunwenpingfenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 论文评分
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
@TableName("lunwenpingfen")
public class LunwenpingfenView  extends LunwenpingfenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LunwenpingfenView(){
	}
 
 	public LunwenpingfenView(LunwenpingfenEntity lunwenpingfenEntity){
 	try {
			BeanUtils.copyProperties(this, lunwenpingfenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
