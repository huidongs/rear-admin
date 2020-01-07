package cn.xhuidong.test;

import cn.xhuidong.dao.IAccountDao;
import cn.xhuidong.dao.IUserDao;
import cn.xhuidong.domain.Account;
import cn.xhuidong.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;


public class AccountTest{

    private InputStream inputStream;
    private SqlSession sqlSession;
    private IAccountDao iAccountDao;

    //初始化方法
    @Before
    public void init() throws IOException {
        //1.读取配置文件
        inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");
        //2.创建SqlSessionFactory工厂
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        //3.使用工厂生产SqlSession对象
        sqlSession = sqlSessionFactory.openSession();
        //4.使用SqlSession创建Dao接口的代理对象
        iAccountDao = sqlSession.getMapper(IAccountDao.class);
        //5.使用代理对象执行方法
    }

    //释放资源
    @After
    public void destroy() throws IOException {
        //提交事务
        sqlSession.commit();
        //
        sqlSession.close();
        inputStream.close();
    }

    @Test
    public void testFindAll() {

        //5.使用代理对象执行方法
        List<Account> accounts = iAccountDao.findAll();
        for (Account account : accounts) {

              System.out.println("---------------每个account信息-----------------");
              System.out.println(account);
           // System.out.println(account.getUser());

        }
    }


}