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
		//대상.css() h1 대상 글자색 가져오기
	var col=$('h1').css('color');
		//alert(col);
		//h1태그 글자색 바꾸기
		$('h1').css('color','pink');
		//$('h1').css('color','pink').css('background','black');
		$('h1').css({
			color:'blue',
			background:'black'
		});
		//배열변수
		var color=['red','blue','green'];
		$('h1').css('color',function(index){
			//alert(index);
			//alert(color[index]);
			return color[index];
		});
		
		
		$('h1').css({
			color: 'orange',
			background:function(index){
			return color1[index1];
			}
		});
		
	});
</script>
</head>
<body>
<h1>head-0</h1>
<h1>head-1</h1>
<h1>head-2</h1>
</body>
</html>