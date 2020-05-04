<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 1000px; margin: 2px ; }
  form div { margin-bottom: 10px; }
  label { display: inline-block; width: 70px; text-align: right; }
  input { width: 150px; padding: 4px; }
  select { width: 100px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
</style>
</head>
<body>
<%

String num1=request.getParameter("num");
String click = request.getParameter("click");


String A_checked = "1".equals(num1) ? "checked" : "";
String B_checked = "2".equals(num1) ? "checked" : "";
String C_checked = "3".equals(num1) ? "checked" : "";



%>
  <div class="container">
    <form >
      <div>
              <label><input type="radio" name="num" value="one" <%=A_checked  %> /> one</label>
     		  <label><input type="radio" name="num" value="two" <%= B_checked %> /> two</label>
     		  <label><input type="radio" name="num" value="three" <%= C_checked %> /> three</label>		     
      </div>     
      <div>
        <input type="text" name="num" value=<%= (num1==null)? "one":num1 %> />
      </div>

      <div>
        <button type="submit" name="click"/>OK</button>
      </div>
    </form>
  </div>
</body>
</html>
