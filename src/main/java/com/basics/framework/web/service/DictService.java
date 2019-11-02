package com.basics.framework.web.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.basics.system.entity.DictData;
import com.basics.system.service.DictDataService;

/**
 * basics首创 html调用 thymeleaf 实现字典读取
 * 
 * @author basics
 */
@Service("dict")
public class DictService
{
    @Autowired
    private DictDataService dictDataService;

    /**
     * 根据字典类型查询字典数据信息
     * 
     * @param dictType 字典类型
     * @return 参数键值
     */
    public List<DictData> getType(String dictType)
    {
        return dictDataService.list(new QueryWrapper<DictData>().eq("DICT_TYPE", dictType));
    }

    /**
     * 根据字典类型和字典键值查询字典数据信息
     * 
     * @param dictType 字典类型
     * @param dictValue 字典键值
     * @return 字典标签
     */
    public String getLabel(String dictType, String dictValue)
    {
    	return dictDataService.getOne(new QueryWrapper<DictData>().eq("DICT_TYPE", dictType).eq("DICT_VALUE", dictValue)).getDictLabel();
    }
}
