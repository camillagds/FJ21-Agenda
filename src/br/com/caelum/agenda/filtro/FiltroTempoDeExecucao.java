package br.com.caelum.agenda.filtro;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.synth.SynthScrollPaneUI;

@WebFilter("/*")
public class FiltroTempoDeExecucao implements javax.servlet.Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		long tempoInicial = System.currentTimeMillis();

		chain.doFilter(req, res);

		long tempoFinal = System.currentTimeMillis();

		String uri = ((HttpServletRequest) req).getRequestURI();
		String parametros = ((HttpServletRequest) req).getParameter("logica");
		System.out.println("Tempo da requisição de " + uri + "?lógica=" + parametros + " demorou (ms): "
				+ (tempoFinal - tempoInicial));

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
