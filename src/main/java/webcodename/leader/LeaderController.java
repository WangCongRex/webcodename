package webcodename.leader;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class LeaderController {

	@RequestMapping("/leader")
	public ModelAndView showLeaderPage(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("colorgrid", "thie is colorgrid");
		mv.addObject("firstteam", "this is first team");
		mv.setViewName("leaderpage");
		return mv;
	}
}
