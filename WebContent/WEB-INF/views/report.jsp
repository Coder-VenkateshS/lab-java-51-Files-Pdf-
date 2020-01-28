<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="bean.Employee" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Export to Excel Example</h1>
      
      <form action="/Week-1-Day-5-Lab-1/report" method="post">
         <table>
            <tr>
               <td>First Name</td>
               <td>Last Name</td>
               <td>Age</td>
            </tr>
             <c:forEach var="employee" items="${requestScope.employees}"/>
            <tr>
               <td><c:out value="${employee}"/></td>
           </tr>
     
         </table>
         <input type="submit" value="Export To Excel"/>
      </form>
</body>
</html>