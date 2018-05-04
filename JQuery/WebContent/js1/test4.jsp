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
			//대상.attr()
			//이미지태그 속성 width 값 가져오기 => 경고메세지 출력
			var img =$('img').attr('width');
			//alert(img);
			//$('img').attr('src','4.jpg');
			$('img').attr({
				width:'300',
				height:'300'
			});
			
			
			$('img').attr('width',function(index){
				return (index+1)*100;
			});
			
		});
</script>
</head>
<body>
<img src="1.jpg" width="200" height="100">
<img src="2.jpg" width="200" height="100">
<img src="3.jpg" width="200" height="100">
</body>
</html>