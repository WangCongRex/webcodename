package webcodename.leader;

import java.util.ArrayList;
import java.util.Random;

import org.springframework.stereotype.Service;

@Service
public class LeaderService {

	public String colorGridFactory(){

		StringBuffer rst = new StringBuffer();

		int redSize = 8;
		int blueSize = 8;

		Random rand = new Random(System.currentTimeMillis());

		int firstTeam = rand.nextInt(2);
		if(firstTeam == 0){
			rst.append("R:");
			redSize ++;
		} else {
			rst.append("B:");
			blueSize ++;
		}

		ArrayList<Integer> redPos = new ArrayList<Integer>();
		ArrayList<Integer> bluePos = new ArrayList<Integer>();
		int blackPos = rand.nextInt(25);

		for(int i=0 ; i<redSize ; i++){
			int pos = rand.nextInt(25);
			while(pos == blackPos
					|| redPos.contains(new Integer(pos))
					){
				pos = rand.nextInt(25);
			}
			
			redPos.add(new Integer(pos));
		}

		for(int i=0 ; i<blueSize ; i++){
			int pos = rand.nextInt(25);
			while(pos == blackPos
					|| redPos.contains(new Integer(pos))
					|| bluePos.contains(new Integer(pos))
					){
				pos = rand.nextInt(25);
			}
			
			bluePos.add(new Integer(pos));
		}

		for(int i=0 ; i<25 ; i++){
			Integer currPos = new Integer(i);
			if(i == blackPos){
				rst.append("K").append("-");
			} else if(redPos.contains(currPos)){
				rst.append("R").append("-");
			} else if(bluePos.contains(currPos)){
				rst.append("B").append("-");
			} else {
				rst.append("Y").append("-");
			}
		}
		
		rst.deleteCharAt(rst.length()-1);
		
		return rst.toString();
	}
}
