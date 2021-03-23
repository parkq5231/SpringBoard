package com.company.board.service;

import lombok.Data;

@Data
public class BoardVO {
	String seq;
	String title;
	String content;
	String writer;
}
