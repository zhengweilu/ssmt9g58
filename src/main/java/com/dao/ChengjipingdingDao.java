package com.dao;

import com.entity.ChengjipingdingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChengjipingdingVO;
import com.entity.view.ChengjipingdingView;
/*采用Mybatis的代理开发方式实现DAO层的开发，DAO接口开发方式只需要程序员编写DAO接口，
 由Mybatis框架根据接口定义创建接口的动态代理对象，代理对象的方法同上边DAO接口实现类方法*/

//持久层接口
/**
 * 成绩评定
 * 
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
//接口代理开发模式中此接口名要与他对应的xml文件中的namespace一致
public interface ChengjipingdingDao extends BaseMapper<ChengjipingdingEntity> {
	//方法名selectListVO对应着mapper下的xml中的id为selectListVO的一个select，下面的selectVO等同样service层调用sql语句时调用这些id即可
	List<ChengjipingdingVO> selectListVO(@Param("ew") Wrapper<ChengjipingdingEntity> wrapper);//方法的形参数据类型要与xml文件中的parameterType一致，此处用了@Param注解的方式，所以xml文件中没有parameterType
	//方法返回的数据类型要与xml文件中的resultType一直，即都为ChengjipingdingVO（此处List集合是一个容器，不影响）
	ChengjipingdingVO selectVO(@Param("ew") Wrapper<ChengjipingdingEntity> wrapper);
	
	List<ChengjipingdingView> selectListView(@Param("ew") Wrapper<ChengjipingdingEntity> wrapper);

	List<ChengjipingdingView> selectListView(Pagination page,@Param("ew") Wrapper<ChengjipingdingEntity> wrapper);
	
	ChengjipingdingView selectView(@Param("ew") Wrapper<ChengjipingdingEntity> wrapper);
	
}
