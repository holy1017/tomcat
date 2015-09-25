package mvc;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DeptController {
	Logger logger = Logger.getLogger(DeptController.class);
	@RequestMapping(value="/getDeptList.do")
	public String getDeptList(){
		logger.info("getDeptList ȣ�� ����");
//		return "redirect:getDeptList.jsp";
		return "forward:getDeptList.jsp";
	}
}
