package com.company.board.service.impl;

import java.util.List;

import com.company.board.service.BoardVO;

public interface BoardMapper {
	// 전체조회
	public List<BoardVO> getBoardList();

	// 단건조회
	public BoardVO getBoard(BoardVO vo);

}
