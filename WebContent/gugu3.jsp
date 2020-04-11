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
  
<%  out.print("<tr>");
	for(int i = 2; i < 6; i++) {
		out.print("<td>");
		for(int j = 1; j < 10; j++) {
			out.print(Integer.toString(i) 
				    + " × " + Integer.toString(j) 
				    + " = " + Integer.toString(j * i) + "<br>");
		}
		out.print("</td>");
		
	}out.print("</tr>");
%>
  </tr>
   <tr>
  
<%  out.print("<tr>");
	for(int i = 6; i < 10; i++) {
		out.print("<td>");
		for(int j = 1; j < 10; j++) {
			out.print(Integer.toString(i) 
				    + " × " + Integer.toString(j) 
				    + " = " + Integer.toString(j * i) + "<br>");
		}
		out.print("</td>");
		
	}out.print("</tr>");
%>
  </tr>
</table>

</body>
</html>
