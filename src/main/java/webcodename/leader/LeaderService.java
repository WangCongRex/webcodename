package webcodename.leader;

import java.util.ArrayList;
import java.util.Random;

import org.springframework.stereotype.Service;

@Service
public class LeaderService {

	public String colorGridFactory(){

		StringBuffer rst = new StringBuffer();
		Random rand = new Random(System.currentTimeMillis());
		ArrayList<String> tmp = new ArrayList<String>();
		
		for(int i=0 ; i<8 ; i++){
			tmp.add("R");
			tmp.add("B");
		}
		
		for(int i=0 ; i<7 ; i++){
			tmp.add("Y");
		}
		tmp.add("K");
		
		int firstTeam = rand.nextInt(2);
		if(firstTeam == 0){
			rst.append("R:");
			tmp.add("R");
		} else {
			rst.append("B:");
			tmp.add("B");
		}
		
		
		for(int i=0 ; i<25 ; i++){
			int tarpos = rand.nextInt(tmp.size());
			rst.append(tmp.get(tarpos)).append("-");
			tmp.remove(tarpos);
		}
		
		rst.deleteCharAt(rst.length()-1);
		
		return rst.toString();
	}
}
