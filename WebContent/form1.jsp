<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  body { font-family: 굴림체; }

  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  button { padding: 0.4em 1em; margin-top: 10px; }
</style>
</head>
<body>
 
<% 
String s1 = request.getParameter("number1");
String cmd1 = request.getParameter("cmd");
int number = (s1==null)?0:Integer.parseInt(s1);


if (cmd1!=null){ number ++;}
%>
      <form>
    
        <input type="text" name="number1" value=<%=number %> />
        <button type="submit" name="cmd" > ++ </button>
       
      </form>
</body>
   
