
<%@ include file="copyright.html" %>

<%@ page isErrorPage="true" import="java.util.*, email.Map" %>

<jsp:useBean id="mymap" scope="session" class="email.Map" />

<html>
<head><title>Buscador de Email</title></head>


<body bgcolor="#ffffff" background="background.gif" link="#000099">

<table border="0" cellspacing="0" cellpadding="5">


<tr>
<td width="150" align="right"> &nbsp; </td>
<td align="right" valign="bottom"> <h1> Buscador de Email </h1> </td>
</tr>


<tr>
<td width="150" align="right"> &nbsp; </td>
<td align="right"> <b>¡Oops! Ha ocurrido una excepci&oacute;n.</b> </td>
</tr>


<tr>
<td width="150" align="right"> &nbsp; </td>
<td align="right">El nombre de la excepci&oacute;n es <%= exception.toString() %>.  
</td>
</tr>

<tr>
<td width="150" align="right"> &nbsp; </td>
<td align="right"> &nbsp; </td>
</tr>


<% if (mymap.getAction() == "delete" ) {  %>

	<tr>
	<td width=150 align=right> &nbsp; </td>
	<td align=right>

	<b>Esto significa que ...</b>
	<p>
	La entrada que t&uacute; estabas intentando  
	<font color="blue">borrar</font> no est&aacute; en el mapa 
	<br>
	<b><i>o</i></b>
	<br>
	no introdujiste un nombre a borrar.
	<p>
	¿Quieres intentarlo <a href="delete.jsp">otra vez</a>?

	</td>
	</tr>

	
<% }

   else if (mymap.getAction() == "lookup" ) { %>

	<tr>
	<td width="150" align="right"> &nbsp; </td>
	<td align="right">

	<b><i>Esto significa que ...</b></i>
	<p>
	La entrada que t&uacute; estabas intentando   
	<font color="blue">buscar</font>
	no est&aacute; en el mapa, <b><i>o</i></b>
	<br>
	no introdujiste un nombre a buscar.
	<p>
	¿Quieres intentarlo <a href="lookup.jsp">otra vez</a>?

	</td>
	</tr>
	
<% } 


    else if (mymap.getAction() == "add" ) { %>
    
        <tr>
	<td width="150" align="right"> &nbsp; </td>
	<td align="right">

	<b><i>Esto significa que ...</b></i>
	<p>
	Estabas intentando <font color="blue">añadir</font>
	una entrada con un nombre nulo.
	<br>
	El mapa no permite esto.
	<p>
	¿Quieres intentarlo <a href="email.jsp">otra vez</a>?
	</td>
	</tr>
    
<%  }  %>


</table>

</body>
</html>