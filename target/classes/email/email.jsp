
<%@ include file="copyright.html" %>

<%@ page isThreadSafe="false" import="java.util.*, email.Map"  errorPage="error.jsp" %>

<jsp:useBean id="mymap" scope="session" class="email.Map" />

<jsp:setProperty name="mymap" property="name" param="name" />
<jsp:setProperty name="mymap" property="email" param="email" />

     
<% mymap.setAction( "add" );  %>


<html>
<head><title>Buscador de Email</title></head>

<body bgcolor="#ffffff" background="background.gif" link="#000099">


<!-- el formulario -->

<form method="get">
<table border="0" cellspacing="0" cellpadding="5">

<tr>
<td width="120"> &nbsp; </td>
<td align="right"> <h1>Buscador de Email</h1> </td>
</tr>

<tr>
<td width="120" align="right"><b>Nombre</b></td>
<td align="left"><input type="text" name="name" size="35"></td>
</tr>

<tr>
<td width="120" align="right"><b>Email</b></td>
<td align="left"><input type="text" name="email" size="35"></td>
</tr>


<tr>
<td width="120"> &nbsp; </td>
<td align="right">
Por favor introduce una nombre y email.
</td>
</tr>


<tr>
<td width="120"> &nbsp; </td>
<td align="right">
<input type="submit" value="Add">
</td>
</tr>


<!-- aquí se llama al método put para añadir
     el nombre y email al mapa -->
     
<%
   String rname = request.getParameter( "name" );
   String remail = request.getParameter( "email" );
   
   if ( rname != null) {
   	mymap.put( rname, remail );
   }   
%>


<!-- el método size cuenta el número de entradas en el mapa -->

<tr>
<td width="120"> &nbsp; </td>
<td align="right">
El mapa tiene <font color="blue"><%= mymap.size() %></font> entradas.
</td>
</tr>



<tr>
<td width="120"> &nbsp; </td>
<td align="right">

<a href="lookup.jsp">Buscar</a>&nbsp; | &nbsp;<a href="delete.jsp">Borrar</a>
</td>
</tr>

</table>
</form>

</body>
</html>