<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  label { display: inline-block; width: 50px; text-align: right; }
  input { width: 200px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
  table { width: 300px; border-collapse: collapse; margin-top: 50px; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }  
</style>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String text1 = request.getParameter("text1");
String text2 = request.getParameter("text2");
String time = request.getParameter("time");

String r1 = request.getParameter("radio1");
String 남_checked = "남".equals(r1) ? "checked" : "";
String 여_checked = "여".equals(r1) ? "checked" : "";

if (text1 == null) text1 = "";
if (text2 == null) text2 = "";
if (time == null) time = "";
String currentTime = new SimpleDateFormat("HH:mm:ss").format(new Date());
%>
  <div class="container">
    <form>
      <h3>텍스트 입력폼 03</h3>
      <div>
        <label>이름:</label> 
        </p>
        <input type="text" name="text1" value="<%= text1 %>" />
      </div>
      
    <div class="radio">
      <label>성별</label> 
      <label><input type="radio" name="radio1" value="남" <%= 남_checked %> /> 남자</label>
      <label><input type="radio" name="radio1" value="여" <%= 여_checked %> /> 여자</label>
    </div>      
  
     
  
      <div>
        <button type="submit">확인</button>
      </div>
    </form>

    <table>
      <thead>
        <tr>
          <th>Parameter Name</th>
          <th>Parameter Value</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>text1</td>
          <td><%= text1 %></td>
        </tr>
        <tr>
          <td>text2</td>
          <td><%= text2 %></td>
        </tr>
        <tr>
          <td>time</td>
          <td><%= time %></td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>

