package com.basics.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.basics.system.entity.Menu;

/**
 * <p>
 * 菜单权限表 Mapper 接口
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface MenuMapper extends BaseMapper<Menu> {

	List<String> selectPermsByUserId(@Param("userId") String userId);

	List<Menu> selectMenuNormalAll();

	List<Menu> selectMenusByUserId(@Param("userId") String userId);

	Menu selectMenuById(@Param("menuId") String menuId);

	List<String> selectMenuTree(@Param("roleId") String roleId);

}
