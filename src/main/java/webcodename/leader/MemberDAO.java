package webcodename.leader;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {
	public int getWordNumber();
	public String getWordByID(int ID);
	public String[] getWordsWhereIDIn(int[] IDs);
}
