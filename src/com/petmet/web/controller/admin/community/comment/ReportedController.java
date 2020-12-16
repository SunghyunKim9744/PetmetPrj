package com.petmet.web.controller.admin.community.comment;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmet.web.entity.BoardCategory;
import com.petmet.web.entity.CommentReportView;
import com.petmet.web.service.CommentReportService;

@WebServlet("/admin/community/comment/reported")
public class ReportedController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request
						, HttpServletResponse response) throws ServletException, IOException {
		
		CommentReportService service = new CommentReportService();
		List<CommentReportView> list = service.getViewList();
		List<BoardCategory> cList = service.getCategoryList();
		
		request.setAttribute("list", list);
		request.setAttribute("cList", cList);
		request.getRequestDispatcher("reported.jsp").forward(request, response);
	}
}
