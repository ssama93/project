<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			//대상.이벤트함수()   .bind('click',기능) .click(기능)
			$('#btn').bind('click',function(){
				alert("클릭");
			});
			$('#btn').click(function(){
				alert("재다라시");
			});
			//h1 클릭했을때  클릭한h1태그 내용을 가져와서 내용* -> h1 태그 넣기
			$('h1').click(function(){
				$(this).html(function(index, html){
					return '*'+html+'*';
				});
				//이벤트 해제
				$(this).unbind();
			});
			//하이퍼링크를 클릭했을 때 배경색변경
			$('a').click(function(){
				$(this).css('background','pink');
				return false;
			});
			//이미지 마우스오버 '2.jpg' 변경,  마우스 아웃 '1.jpg'변경
			$('img').mouseover(function(){
				$(this).attr('src','2.jpg');
				
			}).mouseout(function(){
				$(this).attr('src','1.jpg');
			});
		});

</script>
</head>
<body>
<img src="1.jpg">
<a href="http://www.naver.com">네이버</a>
<h1>head0</h1>
<h1>head1</h1>
<h1>head2</h1>
<input type="button" value="버튼" id="btn">
</body>
</html>