package webcodename.leader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	private MemberService service;

	public ModelAndView showMemberPage(String colorgrid){
		
		ModelAndView mv = new ModelAndView();
		
		String[] colors = colorgrid.split("-");
		mv.addObject("wordcolors", service.colorWordBeansFactory(colors));
		
		mv.setViewName("memberpage");
		
		return mv;
	}

	/**
	 * @return the service
	 */
	public MemberService getService() {
		return service;
	}

	/**
	 * @param service the service to set
	 */
	@Autowired
	public void setService(MemberService service) {
		this.service = service;
	}
	
	
}
