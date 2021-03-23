package com.company.board.service;

import lombok.Data;

@Data
public class ReplyVO {
	String seq;// 댓글번호
	String content;// 댓글내용
	String board_seq;// 게시글 번호
}
