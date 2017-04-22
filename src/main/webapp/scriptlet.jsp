<html>
  <head>
    <title>P&aacute;gina de Testeo de Scriptlet</title>
  </head>
  <body>
    <h1>P&aacute;gina de Testeo de Scriptlet</h1>

    <%
      for(int i=0;i< 10;i++) {
        out.println("<b>Hola Mundo. Este es un test de un scriptlet " + i +
                    "</b><br>");
        System.out.println("Esto va a la salida est&aacute;ndar " + i);
      }
    %>

  </body>
</html>