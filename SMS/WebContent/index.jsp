<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Push 전송 화면</title>
</head>
<body>
<h2>Push 알림 메시지 입력</h2>
 
<form action="push_notification.jsp" method="post">
    <textarea name="message" rows="4" cols="50"></textarea><br>
    <input type="submit" name="submit" value="Send" id="submitButton">
</form>

</body>
</html>