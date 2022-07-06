<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%!
      String[] name = new String[5];
      String[] email = new String[5];
      
      String madeName(String name) {
         return name + "님";
      }
   
      String madeEmail(String email){
         return email + "@google.com";
      }
   %>
   <% 
      name[0] = "지훈일";
      email[0] = "지훈@gmail.com";
      name[1] = "지훈이";
      email[1] = "지훈@gmail.com";
      name[2] = "지훈삼";
      email[2] = "지훈@gmail.com";
      name[3] = "지훈사";
      email[3] = "지훈@gmail.com";
      name[4] = "지훈오";
      email[4] = "지훈@gmail.com";
   %>
   <table>
      <thead>
         <tr>
            <th></th>
            <th></th>
            <th></th>
         </tr>
      </thead>
      <tbody>
      <c:forEach var="name" items="${name}" varStatus="index">
         <tr>
            <td>${status.index + 1 } ></td>
            <td>${madeName(name[i]) }</td>
            <td>${madeEmail(email[i]) }</td>
         </tr>
      </c:forEach>
      </tbody>
   </table>
</body>
</html>