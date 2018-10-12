<%-- 
    Document   : EmitirExt
    Created on : 10/10/2018, 21:46:47
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
        <h2>Emitir extrato</h2>
        <form action="" method="post">
            <p> Número da conta <input type="text" name="NumConta" required="required"></p>
            <p> CPF do responsável <input type="text" name="cpf" required="required"></p>
            <p> Saldo atual <input type="text" name="" </p>
            <p> Histórico de operações</p>
            
        </form>
    </body>
</html>
