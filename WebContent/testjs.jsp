<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>validate验证框架演示</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/><meta http-equiv="Page-Enter" content="revealTrans(duration=1, transition=2)"/><meta http-equiv="Page-Exit" content="revealTrans(duration=1, transition=2)"/>
		<link type="text/css" rel="stylesheet" href="js/css/validate.css" /> 
		<script src="js/talent-validate-all.js" language="javascript"></script><script src="js/demo.js" language="javascript"></script>
		</head><body>
			<form name="form1">
				30-60：<textarea type="text" name="n1">11111111111111111111111111111111111111111111111111</textarea>
				<br/>
				0-15：<textarea type="text" name="n2"></textarea>
				<br/>
				只有最小长度限制：<textarea type="text" name="n3"></textarea>
				<br/>
				
				n5:<input type="text" value="rr" name="n5"/> [5] | { [ 7, 10 ] & ( 8 , 14) }
				<br/>
				n6:<input type="text" value="rr" name="n6"/> [1] |[3] |[5](字符长度可以为1、3或5，其它都不合法)
				<br/>
				
				<input type="button" class='button' value="验证" onclick="tt.validate()"/>
			
			</form>
		</body>
		<script id="talent_script">
			new tt.LV().set(30, 60).add("n1");
			new tt.LV().set(0, 15).add("n2");
			new tt.LV().set(6, '++').add("n3");
			
			new tt.LV().set("[5] | { [ 7, 10 ] & ( 8 , 14) }").add('n5'); //()表示闭区间，[]表示开区间，{}表示优先级，|表示或，&表示与
			new tt.LV().set("[1] |[3] | [5]").add('n6');
		</script>
</html>
    