<%-- 
    Document   : CadConta
    Created on : 10/10/2018, 21:43:44
    Author     : Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank</title>
    </head>
    <body>
        <div><h1>Vinny Soft</h1></div>
        <ul>
            <li><a href="CadConta.jsp">Cadastrar nova conta</a></li>
            <li><a href="CadDeb.jsp">Cadastrar crédito e débito</a></li>
            <li><a href="EmitirExt.jsp">Emissão de Extrato</a></li>
        </ul> <br> <br>
        <h2>Cadastrar conta</h2>
        <form action="SCad" method="post" >
            <p> Número da conta <input type="text" name="NumConta" required="required"> </p>
            <p> CPF <input type="text" name="cpf" required="required"> </p>
            <p> <input type="submit" name="enviar" value="Enviar"> </p>
            <p> <input type="reset" name="limpar" value="Limpar"> </p>
        </form>
    </body>
</html>
