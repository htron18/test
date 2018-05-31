package com.internousdev.ecsite.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{
	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String,Object> session;
	private String errorMessage="";

	public String execute() throws SQLException{

		String result =ERROR;
		UserCreateCompleteDAO dao = new UserCreateCompleteDAO();
		System.out.println(dao.search(loginUserId));
		if(loginUserId == dao.search(loginUserId)) {
			errorMessage = "そのIDは既に使われています。";
			result =ERROR;
		}else {
			dao.cerateUser(loginUserId,loginPassword,userName);
			result=SUCCESS;
		}




		return result;
	}



	public String getErrorMessage() {
		return errorMessage;
	}



	public void setErrorMes(String errorMessage) {
		this.errorMessage = errorMessage;
	}



	public Map<String, Object> getSession() {
		return session;
	}



	public String getLoginUserId(){
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId){
		this.loginUserId=loginUserId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}

	public String getUserName(){
		return userName;
	}

	public void setUserName(String userName){
		this.userName=userName;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}
}
