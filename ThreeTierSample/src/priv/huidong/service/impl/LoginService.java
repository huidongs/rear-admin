package priv.huidong.service.impl;

import priv.huidong.dao.impl.LoginDaoImpl;
import priv.huidong.entity.Login;

public class LoginService {
	LoginDaoImpl logindao = new LoginDaoImpl();

	public int accountCheck(Login login) {
		return logindao.login(login);
	}
}
