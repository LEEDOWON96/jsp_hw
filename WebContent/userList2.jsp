<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*" %>
<%
String srchText = request.getParameter("srchText");
if (srchText == null) srchText = "";
List<User> list = UserDAO3.findByName(srchText);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 600px; margin: 50px auto; font-size: 10pt; }
    input { padding: 5px; font-size: 10pt; }
    button { margin: 10px ; padding: 0.4em 2em; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
    td:nth-child(4) { text-align: center; }
  </style>
</head>
<body>

<div class="container">

<h1>사용자 목록</h1>

<form>
  <label>이름</label>
  <input type="text" name="srchText" value="<%= srchText %>" placeholder="검색조건" />
  <button type="submit">조회</button>
</form>

<table>
    <thead>
        <tr>
              <th>사용자아이디</th>
              <th>이름</th>
              <th>이메일</th>
              <th>학과</th>
              <th>사용자유형</th>
        </tr>
    </thead> 
    <tbody>
        <% for (User user : list) { %>
              <tr>
                  <td><%= user.getuserid() %></td>
                  <td><a href="user1.jsp?id=<%= user.getId() %>"><%= user.getname() %></a>></td>
                  <td><%= user.getemail() %></td>
                  <td><%= user.getdepartmentName() %></td>
                  <td><%= user.getuserType() %></td>
              </tr>
          <% } %>
    </tbody>
</table>

</div>
</body>
</html>