package cn.xhuidong.test;

import cn.xhuidong.dao.IUserDao;
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

/**
 * @auther huidong
 * @date 2019/10/6 23:03
 */
public class MybatisTest {

    private InputStream inputStream;
    private SqlSession sqlSession;
    private IUserDao iUserDao;
    //初始化方法
    @Before
    public void init() throws IOException {
        //1.读取配置文件
        inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");
        //2.创建SqlSessionFactory工厂
        SqlSessionFactory sqlSessionFactory= new SqlSessionFactoryBuilder().build(inputStream);
        //3.使用工厂生产SqlSession对象
        sqlSession = sqlSessionFactory.openSession();
        //4.使用SqlSession创建Dao接口的代理对象
        iUserDao = sqlSession.getMapper(IUserDao.class);
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
    public void testFindAll(){

        //5.使用代理对象执行方法
        List<User> users = iUserDao.findAll();
        for (User user : users){
            System.out.println(user);
        }
    }
    @Test
    public void testSave(){
        User user = new User();
        user.setUsername("testSave Method");
        user.setAddress("南京浦口");
        user.setSex("男");
        user.setBirthday(new Date());

        iUserDao.saveUser(user);

    }
    @Test
    public void testUpdate(){
        User user = new User();
        user.setId(5);
        user.setUsername("testUpdate Method");
        user.setAddress("南京浦口");
        user.setSex("男");
        user.setBirthday(new Date());

        iUserDao.updateUser(user);
    }
    @Test
    public void testDelete(){
        iUserDao.deleteUser(5);
    }
    @Test
    public void testFindById(){
        User user = iUserDao.findById(4);
        System.out.println(user);
    }
    @Test
    public void testFindByName(){
        List<User> users = iUserDao.findByName("%dong%");
        for (User user:
             users) {System.out.println(user);

        }
    }
}
