<%-- 
    Document   : baja
    Created on : 30-oct-2015, 8:52:53
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
    <title>Baja de empleados Alonso</title>
  </head>
  <body>
    <sql:update var="numero">
      delete from emp where apellido = 'alonso'
    </sql:update>
    Se han borrado ${numero} registro(s).
  </body>
</html>
