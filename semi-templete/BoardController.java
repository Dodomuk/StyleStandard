import javax.inject.Inject;


import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;



import com.freehoon.web.board.model.BoardVO;

import com.freehoon.web.board.service.BoardService;



@Controller

@RequestMapping(value = "/board")

public class BoardController {



	@Inject

	private BoardService boardService;

	

	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)

	public String getBoardList(Model model) throws Exception {

		model.addAttribute("boardList", boardService.getBoardList());

		return "board/index";

	}

}	