import java.util.List;



import javax.inject.Inject;



import org.springframework.stereotype.Service;



import com.freehoon.web.board.dao.BoardDAO;

import com.freehoon.web.board.model.BoardVO;



@Service

public class BoardServiceImpl implements BoardService{



	@Inject

	private BoardDAO boardDAO;

	

	public List<BoardVO> getBoardList() throws Exception {

		return boardDAO.getBoardList();

	}



}