package com.company.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.board.service.BoardVO;
import com.company.board.service.impl.BoardMapper;

@Controller
public class BoardController {

	// 서비스
	@Autowired
	BoardMapper boardMapper;

	// 전체조회
	@RequestMapping("/getBoardList")
	public String getBoardList(Model model) {
		model.addAttribute("list", boardMapper.getBoardList());
		return "board/getBoardList";
	}

	// 단건조회
	@RequestMapping("/getBoard")
	public String getBoard(Model model, BoardVO vo) {
		model.addAttribute("board", boardMapper.getBoard(vo));
		return "board/getBoard";
	}
	
	
}
