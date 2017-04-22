<!--
Copyright (c) 1999, Sun Microsystems, Inc. All Rights Reserved.

This software is the confidential and proprietary information of Sun
Microsystems, Inc. ("Confidential Information"). You shall not
disclose such Confidential Information and shall use it only in
accordance with the terms of the license agreement you entered into
with Sun.

SUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF
THE SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE, OR NON-INFRINGEMENT. SUN SHALL NOT BE LIABLE FOR
ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING, OR
DISTRIBUTING THIS SOFTWARE OR ITS DERIVATIVES.
-->


<%@ page import="hello.NameHandler" %>

<jsp:useBean id="mybean" scope="page" class="hello.NameHandler" />
<jsp:setProperty name="mybean" property="*" />


<html>
<head><title>Hola, Usuario</title></head>
<body bgcolor="#ffffff" background="background.gif">

<%@ include file="dukebanner.html" %>

<table border="0" width="700">
<tr>
<td width="150"> &nbsp; </td>
<td width="550"> 
<h1>Mi nombre es Duke. ¿Cu&aacute;l es el tuyo?</h1>
</td>
</tr>
<tr>
<td width="150"></td>
<td width="550">
<form method="get">
<input type="text" name="username" size="25">
<br>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</form>
</table>

<%
    if ( request.getParameter("username") != null ) {
%>

<%@ include file="response.jsp" %>

<%
    }
%>

</body>
</html>