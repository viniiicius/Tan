<%-- 
    Document   : CadDeb
    Created on : 10/10/2018, 21:46:33
    Author     : Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Conta</title>
    </head>
    <body>
        <div><h1>Vinny Soft</h1></div>
        <ul>
            <li><a href="CadConta.jsp">Cadastrar nova conta</a></li>
            <li><a href="CadDeb.jsp">Cadastrar crédito e débito</a></li>
            <li><a href="EmitirExt.jsp">Emissão de Extrato</a></li>
        </ul> <br> <br>
        <h2>Crédito e Débito</h2>
        <form action="" method="post" >
            <p> Valor da Operação <input type="text" name="VOper" required="required"> </p>
            <p> CPF do Responsável <input type="text" name="cpf" required="required"> </p>
            <p> id Da Conta <input type="text" name="idconta" required="required"> </p>
            <p> Tipo da operação <input type="radio" name="oper" value="+" checked > Crédito </p>
            <p> Tipo da operação <input type="radio" name="oper" value="-" > Débito </p>
            <p>  <input type="submit" name="enviar" value="Enviar"> </p>
        </form>
    </body>
</html>
