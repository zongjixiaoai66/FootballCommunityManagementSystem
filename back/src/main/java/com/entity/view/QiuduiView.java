package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.QiuduiEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 球队
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("qiudui")
public class QiuduiView extends QiuduiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表
	/**
	* 球队类型的值
	*/
	@ColumnInfo(comment="球队类型的字典表值",type="varchar(200)")
	private String qiuduiValue;
	/**
	* 分区的值
	*/
	@ColumnInfo(comment="分区的字典表值",type="varchar(200)")
	private String fenquValue;




	public QiuduiView() {

	}

	public QiuduiView(QiuduiEntity qiuduiEntity) {
		try {
			BeanUtils.copyProperties(this, qiuduiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//当前表的
	/**
	* 获取： 球队类型的值
	*/
	public String getQiuduiValue() {
		return qiuduiValue;
	}
	/**
	* 设置： 球队类型的值
	*/
	public void setQiuduiValue(String qiuduiValue) {
		this.qiuduiValue = qiuduiValue;
	}
	//当前表的
	/**
	* 获取： 分区的值
	*/
	public String getFenquValue() {
		return fenquValue;
	}
	/**
	* 设置： 分区的值
	*/
	public void setFenquValue(String fenquValue) {
		this.fenquValue = fenquValue;
	}




	@Override
	public String toString() {
		return "QiuduiView{" +
			", qiuduiValue=" + qiuduiValue +
			", fenquValue=" + fenquValue +
			"} " + super.toString();
	}
}
