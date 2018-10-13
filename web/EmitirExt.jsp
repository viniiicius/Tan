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
    <body style="background-color: mediumorchid" alink="white">
        <div><h1> <font color="white"> Vinny Soft</h1></div> 
        <ul> 
            <li><a href="CadConta.jsp">Cadastrar nova conta</a></li>
            <li><a href="CadDeb.jsp">Cadastrar crédito e débito</a></li>
            <li><a href="EmitirExt.jsp">Emissão de Extrato</a></li>
            </ul> <br> <br>
         <form action="" method="post">
        <table border="1">
            <tr>
                <td><h2>Emitir extrato</h2></td> 
            <tr>
            <td>Número da conta <input type="text" name="NumConta" required="required"></td>
            <tr> 
                <td>CPF do responsável <input type="text" size="18"name="cpf" required="required"></td>
            <tr>
                <td>Saldo atual <input type="text" size="25" name=""</td>
            <tr>
                <td>Histórico de operações</td> 
        </table>
        
            </font>
        </form>
    </body>
</html>
