package com.company.board.service.impl;

import java.util.List;

import com.company.board.service.BoardVO;
import com.company.board.service.ReplyVO;

public interface BoardMapper {
	// 게시글
	// 전체조회
	public List<BoardVO> getBoardList();

	// 단건조회
	public BoardVO getBoard(BoardVO vo);

	// 댓글
	// 해당 게시글의 댓글 조회
	public List<ReplyVO> getReplyList(ReplyVO vo);

	// 댓글 등록
	public int insertReply(ReplyVO vo);

}
