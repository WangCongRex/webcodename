package webcodename.leader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class LeaderController {

	private LeaderService ls;



	public LeaderService getLs() {
		return ls;
	}


	@Autowired
	public void setLs(LeaderService ls) {
		this.ls = ls;
	}



	@RequestMapping("/leader")
	public ModelAndView showLeaderPage(){
		ModelAndView mv = new ModelAndView();
		
		String[] colors = ls.colorGridFactory().split(":");
		
		mv.addObject("colorgrid", colors[1]);
		mv.addObject("firstteam", colors[0]);
		mv.setViewName("leaderpage");
		return mv;
	}
}
