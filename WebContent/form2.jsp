<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 40px; margin: 20px ; }
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
String cmd = request.getParameter("cmd");
String click = request.getParameter("click");


if (click!=null){
	num1=cmd;
}
%>
  <div class="container">
    <form >
      <div>
         
          <select name="cmd">
              <option value="one"<%= "one".equals(cmd) ? "selected" : "" %>>one</option>
              <option value="two"<%= "two".equals(cmd) ? "selected" : "" %>>two</option>
              <option value="three"<%= "three".equals(cmd) ? "selected" : "" %>>three</option>
          </select>
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
