package cn.xhuidong.dao;
import cn.xhuidong.domain.Account;

import java.util.List;

/**
 * @auther huidong
 * @date 2020/1/2 18:43
 */
public interface IAccountDao {

    /**
     * 查询所有账户，同时获取当账户的用户信息
     * @return
     */
    List<Account> findAll();

}
