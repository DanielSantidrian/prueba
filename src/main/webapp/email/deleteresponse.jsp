

<%@ page import="java.util.*, email.Map"  %>


<tr>
<td width="120"> &nbsp; </td>
<td align="right"> <b>Correcto</b> </td>
</tr>


<tr>
<td width="120"> &nbsp; </td>
<td align="right"> 
<jsp:getProperty name="mymap" property="name" />
<br>
<jsp:getProperty name="mymap" property="email" />
<br><p>
ha sido borrada del mapa.
</td>
</tr>
