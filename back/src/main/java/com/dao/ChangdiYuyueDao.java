package com.dao;

import com.entity.ChangdiYuyueEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ChangdiYuyueView;

/**
 * 场地预约 Dao 接口
 *
 * @author 
 */
public interface ChangdiYuyueDao extends BaseMapper<ChangdiYuyueEntity> {

   List<ChangdiYuyueView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
