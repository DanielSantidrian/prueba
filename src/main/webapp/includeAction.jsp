<html>
  <head>
    <title>P&aacute;gina de Testeo de Directivas y Acciones Include</title>
  </head>
  <body>
    <h1>P&aacute;gina de Testeo de Directivas y Acciones Include</h1>

      <h2>Usando la directiva include</h2>

      <%@ include file="included2.html" %>
      <%@ include file="included2.jsp" %>


      <h2>Usando la acci&oacute;n include</h2>

      <jsp:include page="included2.html" flush="true" />
      <jsp:include page="included3.jsp" flush="true" />

  </body>
</html>