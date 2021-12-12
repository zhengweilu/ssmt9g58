package com.entity.vo;

import com.entity.ChengjipingdingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 成绩评定
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * 实体类应该是和数据库里列一一对应的嘛，然后你数据库有很多数据，前端查询的时候不需要那么多数据，可能只需要表里的几个数据，然后vo文件夹里就是把前端需要的数据传过去。然后可以不暴露数据库表的结构。
 * @author 
 * @email 
 * @date 2021-02-20 13:39:03
 */
public class ChengjipingdingVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 论文成绩
	 */
	
	private Integer lunwenchengji;
		
	/**
	 * 答辩时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dabianshijian;
		
	/**
	 * 答辩成绩
	 */
	
	private Integer dabianchengji;
		
	/**
	 * 评语
	 */
	
	private String pingyu;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 学籍号
	 */
	
	private String xuejihao;
				
	
	/**
	 * 设置：论文成绩
	 */
	 
	public void setLunwenchengji(Integer lunwenchengji) {
		this.lunwenchengji = lunwenchengji;
	}
	
	/**
	 * 获取：论文成绩
	 */
	public Integer getLunwenchengji() {
		return lunwenchengji;
	}
				
	
	/**
	 * 设置：答辩时间
	 */
	 
	public void setDabianshijian(Date dabianshijian) {
		this.dabianshijian = dabianshijian;
	}
	
	/**
	 * 获取：答辩时间
	 */
	public Date getDabianshijian() {
		return dabianshijian;
	}
				
	
	/**
	 * 设置：答辩成绩
	 */
	 
	public void setDabianchengji(Integer dabianchengji) {
		this.dabianchengji = dabianchengji;
	}
	
	/**
	 * 获取：答辩成绩
	 */
	public Integer getDabianchengji() {
		return dabianchengji;
	}
				
	
	/**
	 * 设置：评语
	 */
	 
	public void setPingyu(String pingyu) {
		this.pingyu = pingyu;
	}
	
	/**
	 * 获取：评语
	 */
	public String getPingyu() {
		return pingyu;
	}
				
	
	/**
	 * 设置：登记时间
	 */
	 
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}
				
	
	/**
	 * 设置：教师工号
	 */
	 
	public void setJiaoshigonghao(String jiaoshigonghao) {
		this.jiaoshigonghao = jiaoshigonghao;
	}
	
	/**
	 * 获取：教师工号
	 */
	public String getJiaoshigonghao() {
		return jiaoshigonghao;
	}
				
	
	/**
	 * 设置：学籍号
	 */
	 
	public void setXuejihao(String xuejihao) {
		this.xuejihao = xuejihao;
	}
	
	/**
	 * 获取：学籍号
	 */
	public String getXuejihao() {
		return xuejihao;
	}
			
}
