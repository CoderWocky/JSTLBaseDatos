<%-- 
    Document   : index
    Created on : 30-oct-2015, 8:28:56
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt"%>

<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="javaoracle"/>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Empleados</title>
    <style>
      table {
        border: 1px solid black;
        border-collapse: collapse;
        margin: auto;
      }
      
      td, th {
        border: 1px solid black;
        padding: 0.5em;
      }
      
      td.number {
        text-align: right;
      }
    </style>
  </head>
  <body>
    <sql:query var="empleados">
      select apellido, salario from emp
    </sql:query>
    <table>
      <thead>
        <tr><th>APELLIDO</th><th>SALARIO</th></tr>
      </thead>
      <tbody>
        <c:forEach items="${empleados.rows}" var="fila">
          <tr>
            <td>${fila.apellido}</td>
            <td class="number">${fila.salario}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
