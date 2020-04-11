<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    table { border-collapse: collapse; }
    td { padding: 5px; border: solid 1px gray; }
</style>
</head>
<body>
         
  
<table>
 <tr>
  
<% 
	for(int i = 1; i < 10; i++) {
		out.print("<tr>");
		for(int j = 2; j < 10; j++) {
			out.print("<td>");
			out.print(Integer.toString(j) 
				    + " × " + Integer.toString(i) 
				    + " = " + Integer.toString(j * i));
			out.print("</td>");
			}
		out.print("</tr>");
	}
%>
  </tr>
</table>

</body>
</html>
