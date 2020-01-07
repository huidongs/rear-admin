package cn.xhuidong.dao;

import cn.xhuidong.domain.Role;

import java.util.List;

/**
 * @auther huidong
 * @date 2020/1/3 23:10
 */
public interface IRoleDao {
    List<Role> findAll();
}
