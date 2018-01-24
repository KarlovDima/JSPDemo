import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;
import java.util.Date;

@WebFilter(filterName = "LogFilter", urlPatterns = {"/*"}, initParams = {@WebInitParam(name = "test-param", value = "Initialization parameter")})
public class LogFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("IP address is " + req.getRemoteAddr() + ", date is " + new Date());
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        System.out.println("Test parameter = " + config.getInitParameter("test-param"));
    }

}
