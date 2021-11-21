<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./jsp_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 성공화면</title>
</head>
<body>
<div align="center" class="body">
<h2>로그인화면</h2>
<br>
환영합니다,${ loginAdmin.aname }씨!
<br><br><br>
<a href="/pany/aedit?adminId=${loginAdmin.aid}"><회원정보 수정></a> 
<br><br>
<a href="/pany/alogout">[logout]</a>
</div>
</body>
</html>