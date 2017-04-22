<!--
  Number Guess Game
  Written by Jason Hunter <jasonh@kasoftware.com>, CTO, K&A Software
  Copyright 1999, K&A Software, distributed by Sun with permission
-->

<%@ page import = "num.NumberGuessBean" %>

<jsp:useBean id="numguess" class="num.NumberGuessBean" scope="session"/>
<jsp:setProperty name="numguess" property="*"/>

<html>
<head><title>Number Guess</title></head>
<body bgcolor="white">
<font size=4>

<% if (numguess.getSuccess()) { %>

  ¡Felicidades!  Lo tienes.
  Despu&eacute;s de <%= numguess.getNumGuesses() %> intentos.<p>

  <% numguess.reset(); %>

  ¿Quieres <a href="numguess.jsp">intentarlo otra vez</a>?

<% } else if (numguess.getNumGuesses() == 0) { %>

  Bienvenido al Juego de Adivinar el N&uacute;mero.<p>

  Estoy pensando un n&uacute;mero entre el 1 y el 100.<p>

  <form method=get>
  ¿Cu&aacute;l es tu n&uacute;mero? <input type=text name=guess>
  <input type=submit value="Submit">
  </form>

<% } else { %>

  Buen intento, pero no.  Intenta <b><%= numguess.getHint() %></b>.

  Has hecho <%= numguess.getNumGuesses() %> intentos.<p>

  Estoy pensando un n&uacute;mero entre el 1 y el 100.<p>

  <form method=get>
  ¿Cu&aacute;l es tu n&uacute;mero?  <input type=text name=guess>
  <input type=submit value="Submit">
  </form>

<% } %>

</font>
</body>
</html>
