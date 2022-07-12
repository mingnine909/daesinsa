package kh.spring.daesinsa.member.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.web.access.AccessDeniedHandler;

public class CustomAccessDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest req, HttpServletResponse res,
			org.springframework.security.access.AccessDeniedException ade) throws IOException, ServletException {

		req.setAttribute("errMsg", ade.getMessage());
		req.getRequestDispatcher("/WEB-INF/views/member/login").forward(req, res);

	}

}
