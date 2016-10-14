package webcodename.leader;

import java.util.ArrayList;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	
//	private MemberDAO dao;
	
	public ArrayList<ColorWordBean> colorWordBeansFactory(String[] colors){
		ArrayList<ColorWordBean> rst = new ArrayList<ColorWordBean>();
//		int wordNum = dao.getWordNumber();
//		Random rand = new Random(System.currentTimeMillis());
//		
//		for(int i=0 ; i<25 ; i++){
//			ColorWordBean bean = new ColorWordBean();
//			bean.setColor(colors[24-i]);
//			bean.setWord(dao.getWordByID(rand.nextInt(wordNum+1)));
//			rst.add(bean);
//		}
//		
//		
		return rst;
	}

//	public MemberDAO getDao() {
//		return dao;
//	}
//	
//	@Autowired
//	public void setDao(MemberDAO dao) {
//		this.dao = dao;
//	}
}
