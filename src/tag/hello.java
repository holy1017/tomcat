package tag;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class hello extends SimpleTagSupport {
	
	public void doTag() throws IOException {
		JspWriter out = getJspContext().getOut();
		out.println("<span>");
		out.println("askdfaslfdladjkas");
		out.println("</span>");
	}
}
