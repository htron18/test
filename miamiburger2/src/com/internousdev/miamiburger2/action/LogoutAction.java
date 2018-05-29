package com.internousdev.miamiburger2.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class LogoutAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	public String execute() {
		/**
		 * ログアウト時にはセッションを一度空にしますが、再度買い物ができるようにゲストIDは残します
		**/

		//初めに取得したゲスト用IDを保存
		String tempUserId = session.get("tempUserId").toString();
		session.clear();		//セッションクリア

		//再度詰め直し
		session.put("tempUserId", tempUserId);
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {

	this.session = session;
}
}