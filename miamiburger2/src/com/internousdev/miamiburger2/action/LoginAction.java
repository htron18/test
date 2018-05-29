package com.internousdev.miamiburger2.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.miamiburger2.dao.LoginDAO;
import com.internousdev.miamiburger2.dto.LoginDTO;
import com.internousdev.miamiburger2.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport implements SessionAware{
	private String userId;
	private String password;
	private String tempUserId;
	private boolean saveIdFlg;
	private List<String> loginIdErrorMessageList=new ArrayList<String>();
	private List<String> passwordErrorMessageList=new ArrayList<String>();
	private Map<String,Object> session;



	public String execute() throws SQLException{
		String ret=ERROR;
		LoginDAO dao=new LoginDAO();
		LoginDTO dto=new LoginDTO();
		dto=dao.select(userId,password);

		//userIdの保存
		if(saveIdFlg) {
			session.put("saveId", userId);
		}else {
			session.remove("saveId");
		}


		//エラー文の表示
		InputChecker inputChecker=new InputChecker();

		loginIdErrorMessageList=inputChecker.doCheck("ログインID",userId,1,8,true,false,false,true,false);
		passwordErrorMessageList=inputChecker.doCheck("パスワード",password,1,16,true,false,false,true,false);

		if(loginIdErrorMessageList.size()!=0 && passwordErrorMessageList.size()!=0) {
			session.put("loginIdErrorMessageList", loginIdErrorMessageList);
			session.put("passwordErrorMessageList", passwordErrorMessageList);
			session.put("logined", 0);
		}

		//ログイン認証
		if(userId.equals(dto.getUserId())) {
			if(password.equals(dto.getPassword())){
			ret = SUCCESS ; }
			}
			session.put("userId", dto.getUserId());

			return ret;
			}



	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTempUserId() {
		return tempUserId;
	}

	public void setTempUserId(String tempUserId) {
		this.tempUserId = tempUserId;
	}


	public List<String> getLoginIdErrorMessageList() {
		return loginIdErrorMessageList;
	}


	public void setLoginIdErrorMessageList(List<String> loginIdErrorMessageList) {
		this.loginIdErrorMessageList = loginIdErrorMessageList;
	}


	public List<String> getPasswordErrorMessageList() {
		return passwordErrorMessageList;
	}


	public void setPasswordErrorMessageList(List<String> passwordErrorMessageList) {
		this.passwordErrorMessageList = passwordErrorMessageList;
	}


	public Map<String, Object> getSession() {
		return session;
	}

	public boolean getSaveIdFlg() {
		return saveIdFlg;
	}

	public void setSaveIdFlg(boolean saveIdFlg) {
		this.saveIdFlg = saveIdFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
