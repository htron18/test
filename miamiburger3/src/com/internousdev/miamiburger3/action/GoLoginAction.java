package com.internousdev.miamiburger3.action;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.miamiburger3.dao.LoginDAO;
import com.internousdev.miamiburger3.dao.ProductInfoDAO;
import com.internousdev.miamiburger3.dto.ProductInfoDTO;
import com.internousdev.miamiburger3.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;
public class GoLoginAction extends ActionSupport implements SessionAware{
	private String userId;
	private String password;
	private String errorMessage;
	private boolean saveIdFlg;
	private Map<String,Object>session;

	// 検索ワード(初期値空白)
		private String search = "";
	// 商品情報取得DAO
		private ProductInfoDAO productInfoDAO = new ProductInfoDAO();
	// 商品情報をリストに格納
		public ArrayList<ProductInfoDTO> productInfoList = new ArrayList<ProductInfoDTO>();


	public String execute(){
		String result = ERROR;
		LoginDAO dao = new LoginDAO();
		UserInfoDTO userInfoDTO = new UserInfoDTO();

		if(saveIdFlg) {
			session.put("saveId", userId);
		}else {
			session.remove("saveId");
		}

		//ユーザーの情報をDTOに詰める
		userInfoDTO = dao.login(userId, password);

		//DTOに中身があればセッションに詰める
		if(!(userInfoDTO.getUserId() == null)){
			session.put("userInfoDTO", userInfoDTO);

			if(userInfoDTO.getMasterFlg() == 1){
			//管理者画面へ遷移、それに伴う商品情報の取得

				productInfoList = productInfoDAO.getProductListInfoAll(search);
				session.put("productInfoList", productInfoList);
				return INPUT;

			}

			//現在はカートに商品がないためコメントにします
//			dao.changeUserCart(userId,session.get("tempUserId").toString());

			result = SUCCESS;
		}else{
			errorMessage = "ユーザーID、またはパスワードが違います。";	//エラー時
		}

		return result;
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

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}


}
