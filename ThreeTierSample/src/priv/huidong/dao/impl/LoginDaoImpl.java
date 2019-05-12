package priv.huidong.dao.impl;


import java.sql.ResultSet;
import java.sql.SQLException;
import priv.huidong.util.DBUtil;

import priv.huidong.entity.Login;

//模型层，处理登录（查询数据）
public class LoginDaoImpl {
	//判断是否有该用户，存在返回1，否则返回0，异常-1；
	public int login(Login login) {
		
		ResultSet rs=null;	
		int count = -1;
		try {
			
			String sql = "select * from user where username = ? and password = ?";
		    Object[] obj = {login.getUname(),login.getUpwd()};
		    rs = DBUtil.executeQuery(sql,obj);
			if(rs.next()) {
				count = rs.getInt(1);
			}
			if(count>0) {
				return 1;
			}else {
				return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(DBUtil.pstmt!=null) {
				try {
					DBUtil.pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(DBUtil.conn!=null) {
				try {
					DBUtil.conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}
