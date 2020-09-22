package cn.kgc.tangcco.tcas2282.haoyu.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodeFilter implements Filter {
	private String encode = null;

	@Override
	public void destroy() {
		encode = null;

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		response.setContentType("text/html;charset=utf-8");
		if (null == request.getCharacterEncoding()) {
			request.setCharacterEncoding(encode);

		}
		chain.doFilter(request, response);

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String encode = filterConfig.getInitParameter("encode");
		if (this.encode == null) {
			this.encode = encode; // 查找配置文件中欲设的字符集编码
		}
	}

}
