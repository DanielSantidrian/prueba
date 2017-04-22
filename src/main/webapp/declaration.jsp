<%!
  int numTimes = 3;

  public String sayHello(String name) {
    return "Hola, " + name + "!";
  }  
%>


<html>
  <head>
    <title>P&aacute;gina de Testeo de Declaraci&oacute;n</title>
  </head>
  <body>
    <h1>P&aacute;gina de Testeo de Declaraci&oacute;n</h1>

    <p>El valor del n&uacute;mero de veces es <%= numTimes %>.</p>
    <p>Diciendo hola al lector: "<%= sayHello("lector") %>".</p>
  </body>
</html>