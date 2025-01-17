package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.admin.controller.AdminDeleteOkController;
import com.app.admin.controller.AdminListController;
import com.app.admin.controller.AdminLoginOkController;
import com.app.admin.controller.AdminUpdateController;
import com.app.admin.controller.AdminUpdateOkController;
import com.app.admin.controller.AdminWriteOkController;

public class AdminFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    req.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html; charset=utf-8");
	    String target = req.getRequestURI().replace(req.getContextPath() + "/admin/", "").split("\\.")[0];
	    Result result = null;
	    
	  
	    if (target.equals("admin-loginAdmin")) { // 로그인 페이지 로직
	        result = new Result();
	        result.setPath("../admin/admin-loginAdmin.jsp");

	    } else if (target.equals("admin-loginAdmin-ok")) { // 로그인 처리 로직
	        result = new AdminLoginOkController().execute(req, resp);
	        
	    } else if (target.equals("admin-write")) { // 공지사항 등록 페이지 이동 처리
	    	result = new Result();
	    	result.setPath("../admin/admin-write.jsp"); // JSP로 포워딩
	    	
	    } else if (target.equals("admin-write-ok")) { // 공지사항 등록 페이지 완료
	    	result = new AdminWriteOkController().execute(req, resp);

	    } else if (target.equals("admin-list")) { // 공지사항 목록
	        result = new AdminListController().execute(req, resp);
	        
	    } else if (target.equals("admin-update")) { // 공지사항 수정
	        result = new AdminUpdateController().execute(req, resp);

	    } else if (target.equals("admin-update-ok")) { // 공지사항 수정 완료
	        result = new AdminUpdateOkController().execute(req, resp);

	    } else if (target.equals("admin-delete-ok")) { // 공지사항 삭제
	        result = new AdminDeleteOkController().execute(req, resp);

	    } else {
	        result = new Result();
	        result.setPath("../not-found.jsp");
	    }

	    System.out.println(target);
	    
	    if (result != null) {
	        if (result.isRedirect()) {
	            resp.sendRedirect(result.getPath());
	        } else {
	            req.getRequestDispatcher(result.getPath()).forward(req, resp);
	        }
	    }
	}


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
