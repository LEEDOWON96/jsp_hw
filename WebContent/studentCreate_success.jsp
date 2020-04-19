<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ page import="jsp_hw.*" %>
<%
Student user = (Student)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  body { font-family: 굴림체; }
  div.container { width: 600px; margin: 20px auto; }
  table { width: 500px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>  
</head>
<body>

<div class="container">

<h1>회원가입 성공</h1>

<table>
  <tr>
    <td>ID</td>
    <td><%= user.getId() %></td>
  </tr>
  <tr>
    <td>학번</td>
    <td><%= user.getStudentNumber() %></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><%= user.getName() %></td>
  </tr>
  <tr>
    <td>학과</td>
    <td><%= user.getDepartmentId() %></td>
  </tr>
  <tr>
    <td>학년</td>
    <td><%= user.getYear() %></td>
  </tr>
</table>

</div>
</body>
</html>
