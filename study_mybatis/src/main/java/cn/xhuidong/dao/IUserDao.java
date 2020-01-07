package cn.xhuidong.dao;

import cn.xhuidong.domain.User;

import java.util.List;

/**
 *@auther huidong
 *@date ${DATE} ${TIME}
 * //用户持久层接口
 */

public interface IUserDao {


    //查询所有用户，同时获取用户下所有账户信息
    List<User> findAll();

    //保存用户
    void saveUser(User user);

    //更新用户
    void updateUser(User user);

    //根据id删除用户
    void deleteUser(Integer userId);

    //根据id查询用户
    User findById(Integer userid);

    //根据名称模糊查询用户信息
    List<User> findByName(String name);
}
