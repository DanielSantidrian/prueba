<%@ include file="copyright.html" %>

<%@ page isThreadSafe="false" import="java.util.*, email.Map" errorPage="error.jsp" %>

<jsp:useBean id="mymap" scope="session" class="email.Map" />
<jsp:setProperty name="mymap" property="name" param="name" />

     
<% mymap.setAction( "delete" ); %>


<html>
<head><title> Buscador de Email</title></head>

<body bgcolor="#ffffff" background="background.gif" link="#000099">

<form method="get">
<table border="0" cellspacing="0" cellpadding="5">

<tr>
<td width="120"> &nbsp; </td>
<td align="right"> <h1>Buscador de Email</h1> </td>
</tr>

<tr>
<td width="120" align="right"><b>Nombre</b></td>
<td align="left"> <input type="text" name="name" size="35"> </td>
</tr>


<tr>
<td width="120"> &nbsp; </td>
<td align="right">  
Por favor introduce un nombre que quieras borrar.
</td>
</tr>


<tr>
<td width="120"> &nbsp; </td>
<td align="right">
El mapa tiene <font color="blue"> <%= mymap.size() %></font> entradas.
</td>
</tr>


<tr>
<td width="120"> &nbsp; </td>
<td align="right"> <input type="submit" value="Delete"> </td>
</tr> 


<!-- muestra el nombre y email, luego
     borra del mapa -->

<%  if ( request.getParameter( "name" ) != null ) {  %>

       <%@ include file="deleteresponse.jsp" %>

<%
       mymap.remove( request.getParameter("name") ) ;
    }  
%>


<tr>
<td width="120"> &nbsp; </td>
<td align="right">
<a href="email.jsp">Añadir</a> &nbsp; | &nbsp;<a href="lookup.jsp">Buscar</a>
</td>
</tr>


</table>
</form>

</body>
</html>














