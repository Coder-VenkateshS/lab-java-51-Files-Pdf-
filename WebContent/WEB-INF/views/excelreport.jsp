<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="bean.Employee" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <body>
      <h1>Export to Excel Example</h1>
      <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
         <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Age</td>
         </tr>
         <%
            List<Employee> employees  = (List<Employee>)request.getAttribute("employees");
              
            for(Employee e: employees){
            %>
         <tr>
            <td><%=e.getFirstName()%></td>
            <td><%=e.getLastName()%></td>
            <td><%=e.getAge()%></td>
         </tr>
         <% 
            }
            %>
      </table>
      ${message}
   </body>
</body>
</html>