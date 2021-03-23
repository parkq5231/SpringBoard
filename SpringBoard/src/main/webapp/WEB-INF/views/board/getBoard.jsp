<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<h3>상세보기</h3>
	제목: ${board.title}<br>
	내용: ${board.content}<br>
	<hr>
	<h3>댓글</h3>
	<div id="reply"></div>
	<form name="replyFrm">
		<input name ="content">
		<button type="button" id="btnAdd">댓글등록</button>
	</form>
<script>
	
	//댓글목록
	$.ajax({
		url:"getReplyList",
		data:{board_seq:${board.seq} },//이렇게 적어도 get방식으로 넘어감
		dataType:"json",
		success:function(response){
			for(i = 0; i<response.length;i++){
				$("#reply").append(response[i].content+"<br>");
				}//end of for
			}//end of success
	})//end of ajax
	
	//댓글등록
	$("#btnAdd").on("click",function(){
		//등록 ajax처리 후 등록된 댓글을 div에 append
		$.ajax({
			url:"insertReply",
			data:{ board_seq:${board.seq}, content:$("[name=content]").val() },//form태그의 name값 가져옴, QueryString형태로 바꿔줌
			dataType:"json",
			success:function(response){
				$("#reply").append(response.content + "<br>");
			}
		});//end of ajax
	});//end of function	
</script>
</body>
</html>