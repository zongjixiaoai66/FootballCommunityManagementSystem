
package com.controller;

import java.io.File;
import java.math.BigDecimal;
import java.net.URL;
import java.text.SimpleDateFormat;
import com.alibaba.fastjson.JSONObject;
import java.util.*;
import org.springframework.beans.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import com.service.TokenService;
import com.utils.*;
import java.lang.reflect.InvocationTargetException;

import com.service.DictionaryService;
import org.apache.commons.lang3.StringUtils;
import com.annotation.IgnoreAuth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.*;
import com.entity.view.*;
import com.service.*;
import com.utils.PageUtils;
import com.utils.R;
import com.alibaba.fastjson.*;

/**
 * 球队收藏
 * 后端接口
 * @author
 * @email
*/
@RestController
@Controller
@RequestMapping("/qiuduiCollection")
public class QiuduiCollectionController {
    private static final Logger logger = LoggerFactory.getLogger(QiuduiCollectionController.class);

    private static final String TABLE_NAME = "qiuduiCollection";

    @Autowired
    private QiuduiCollectionService qiuduiCollectionService;


    @Autowired
    private TokenService tokenService;

    @Autowired
    private ChangdiService changdiService;//场地
    @Autowired
    private ChangdiCollectionService changdiCollectionService;//场地收藏
    @Autowired
    private ChangdiLiuyanService changdiLiuyanService;//场地留言
    @Autowired
    private ChangdiYuyueService changdiYuyueService;//场地预约
    @Autowired
    private DictionaryService dictionaryService;//字典
    @Autowired
    private ForumService forumService;//论坛
    @Autowired
    private JiaolianService jiaolianService;//教练
    @Autowired
    private NewsService newsService;//足球资讯
    @Autowired
    private QiuduiService qiuduiService;//球队
    @Autowired
    private QiuduiLiuyanService qiuduiLiuyanService;//球队留言
    @Autowired
    private XunliandakaService xunliandakaService;//训练打卡
    @Autowired
    private YonghuService yonghuService;//用户
    @Autowired
    private UsersService usersService;//管理员


    /**
    * 后端列表
    */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("page方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));
        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永不会进入");
        else if("用户".equals(role))
            params.put("yonghuId",request.getSession().getAttribute("userId"));
        else if("教练".equals(role))
            params.put("jiaolianId",request.getSession().getAttribute("userId"));
        CommonUtil.checkMap(params);
        PageUtils page = qiuduiCollectionService.queryPage(params);

        //字典表数据转换
        List<QiuduiCollectionView> list =(List<QiuduiCollectionView>)page.getList();
        for(QiuduiCollectionView c:list){
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(c, request);
        }
        return R.ok().put("data", page);
    }

    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("info方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        QiuduiCollectionEntity qiuduiCollection = qiuduiCollectionService.selectById(id);
        if(qiuduiCollection !=null){
            //entity转view
            QiuduiCollectionView view = new QiuduiCollectionView();
            BeanUtils.copyProperties( qiuduiCollection , view );//把实体数据重构到view中
            //级联表 用户
            //级联表
            YonghuEntity yonghu = yonghuService.selectById(qiuduiCollection.getYonghuId());
            if(yonghu != null){
            BeanUtils.copyProperties( yonghu , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yonghuId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setYonghuId(yonghu.getId());
            }
            //级联表 球队
            //级联表
            QiuduiEntity qiudui = qiuduiService.selectById(qiuduiCollection.getQiuduiId());
            if(qiudui != null){
            BeanUtils.copyProperties( qiudui , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yonghuId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setQiuduiId(qiudui.getId());
            }
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(view, request);
            return R.ok().put("data", view);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @RequestMapping("/save")
    public R save(@RequestBody QiuduiCollectionEntity qiuduiCollection, HttpServletRequest request){
        logger.debug("save方法:,,Controller:{},,qiuduiCollection:{}",this.getClass().getName(),qiuduiCollection.toString());

        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永远不会进入");
        else if("用户".equals(role))
            qiuduiCollection.setYonghuId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

        Wrapper<QiuduiCollectionEntity> queryWrapper = new EntityWrapper<QiuduiCollectionEntity>()
            .eq("qiudui_id", qiuduiCollection.getQiuduiId())
            .eq("yonghu_id", qiuduiCollection.getYonghuId())
            .eq("qiudui_collection_types", qiuduiCollection.getQiuduiCollectionTypes())
            ;

        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        QiuduiCollectionEntity qiuduiCollectionEntity = qiuduiCollectionService.selectOne(queryWrapper);
        if(qiuduiCollectionEntity==null){
            qiuduiCollection.setInsertTime(new Date());
            qiuduiCollection.setCreateTime(new Date());
            qiuduiCollectionService.insert(qiuduiCollection);
            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

    /**
    * 后端修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody QiuduiCollectionEntity qiuduiCollection, HttpServletRequest request) throws NoSuchFieldException, ClassNotFoundException, IllegalAccessException, InstantiationException {
        logger.debug("update方法:,,Controller:{},,qiuduiCollection:{}",this.getClass().getName(),qiuduiCollection.toString());
        QiuduiCollectionEntity oldQiuduiCollectionEntity = qiuduiCollectionService.selectById(qiuduiCollection.getId());//查询原先数据

        String role = String.valueOf(request.getSession().getAttribute("role"));
//        if(false)
//            return R.error(511,"永远不会进入");
//        else if("用户".equals(role))
//            qiuduiCollection.setYonghuId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

            qiuduiCollectionService.updateById(qiuduiCollection);//根据id更新
            return R.ok();
    }



    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Integer[] ids, HttpServletRequest request){
        logger.debug("delete:,,Controller:{},,ids:{}",this.getClass().getName(),ids.toString());
        List<QiuduiCollectionEntity> oldQiuduiCollectionList =qiuduiCollectionService.selectBatchIds(Arrays.asList(ids));//要删除的数据
        qiuduiCollectionService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }


    /**
     * 批量上传
     */
    @RequestMapping("/batchInsert")
    public R save( String fileName, HttpServletRequest request){
        logger.debug("batchInsert方法:,,Controller:{},,fileName:{}",this.getClass().getName(),fileName);
        Integer yonghuId = Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId")));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            List<QiuduiCollectionEntity> qiuduiCollectionList = new ArrayList<>();//上传的东西
            Map<String, List<String>> seachFields= new HashMap<>();//要查询的字段
            Date date = new Date();
            int lastIndexOf = fileName.lastIndexOf(".");
            if(lastIndexOf == -1){
                return R.error(511,"该文件没有后缀");
            }else{
                String suffix = fileName.substring(lastIndexOf);
                if(!".xls".equals(suffix)){
                    return R.error(511,"只支持后缀为xls的excel文件");
                }else{
                    URL resource = this.getClass().getClassLoader().getResource("static/upload/" + fileName);//获取文件路径
                    File file = new File(resource.getFile());
                    if(!file.exists()){
                        return R.error(511,"找不到上传文件，请联系管理员");
                    }else{
                        List<List<String>> dataList = PoiUtil.poiImport(file.getPath());//读取xls文件
                        dataList.remove(0);//删除第一行，因为第一行是提示
                        for(List<String> data:dataList){
                            //循环
                            QiuduiCollectionEntity qiuduiCollectionEntity = new QiuduiCollectionEntity();
//                            qiuduiCollectionEntity.setQiuduiId(Integer.valueOf(data.get(0)));   //球队 要改的
//                            qiuduiCollectionEntity.setYonghuId(Integer.valueOf(data.get(0)));   //用户 要改的
//                            qiuduiCollectionEntity.setQiuduiCollectionTypes(Integer.valueOf(data.get(0)));   //类型 要改的
//                            qiuduiCollectionEntity.setInsertTime(date);//时间
//                            qiuduiCollectionEntity.setCreateTime(date);//时间
                            qiuduiCollectionList.add(qiuduiCollectionEntity);


                            //把要查询是否重复的字段放入map中
                        }

                        //查询是否重复
                        qiuduiCollectionService.insertBatch(qiuduiCollectionList);
                        return R.ok();
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            return R.error(511,"批量插入数据异常，请联系管理员");
        }
    }




    /**
    * 前端列表
    */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("list方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));

        CommonUtil.checkMap(params);
        PageUtils page = qiuduiCollectionService.queryPage(params);

        //字典表数据转换
        List<QiuduiCollectionView> list =(List<QiuduiCollectionView>)page.getList();
        for(QiuduiCollectionView c:list)
            dictionaryService.dictionaryConvert(c, request); //修改对应字典表字段

        return R.ok().put("data", page);
    }

    /**
    * 前端详情
    */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("detail方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        QiuduiCollectionEntity qiuduiCollection = qiuduiCollectionService.selectById(id);
            if(qiuduiCollection !=null){


                //entity转view
                QiuduiCollectionView view = new QiuduiCollectionView();
                BeanUtils.copyProperties( qiuduiCollection , view );//把实体数据重构到view中

                //级联表
                    YonghuEntity yonghu = yonghuService.selectById(qiuduiCollection.getYonghuId());
                if(yonghu != null){
                    BeanUtils.copyProperties( yonghu , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setYonghuId(yonghu.getId());
                }
                //级联表
                    QiuduiEntity qiudui = qiuduiService.selectById(qiuduiCollection.getQiuduiId());
                if(qiudui != null){
                    BeanUtils.copyProperties( qiudui , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setQiuduiId(qiudui.getId());
                }
                //修改对应字典表字段
                dictionaryService.dictionaryConvert(view, request);
                return R.ok().put("data", view);
            }else {
                return R.error(511,"查不到数据");
            }
    }


    /**
    * 前端保存
    */
    @RequestMapping("/add")
    public R add(@RequestBody QiuduiCollectionEntity qiuduiCollection, HttpServletRequest request){
        logger.debug("add方法:,,Controller:{},,qiuduiCollection:{}",this.getClass().getName(),qiuduiCollection.toString());
        Wrapper<QiuduiCollectionEntity> queryWrapper = new EntityWrapper<QiuduiCollectionEntity>()
            .eq("qiudui_id", qiuduiCollection.getQiuduiId())
            .eq("yonghu_id", qiuduiCollection.getYonghuId())
            .eq("qiudui_collection_types", qiuduiCollection.getQiuduiCollectionTypes())
//            .notIn("qiudui_collection_types", new Integer[]{102})
            ;
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        QiuduiCollectionEntity qiuduiCollectionEntity = qiuduiCollectionService.selectOne(queryWrapper);
        if(qiuduiCollectionEntity==null){
            qiuduiCollection.setInsertTime(new Date());
            qiuduiCollection.setCreateTime(new Date());
        qiuduiCollectionService.insert(qiuduiCollection);

            return R.ok();
        }else {
            return R.error(511,"您已经收藏过了");
        }
    }

}

