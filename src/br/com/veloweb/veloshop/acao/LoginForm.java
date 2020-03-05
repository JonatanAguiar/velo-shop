package br.com.veloweb.veloshop.acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginForm implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) {
		return "fw:formLogin.jsp";
	}

}
