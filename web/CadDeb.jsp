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
        <title>Bank</title>
    </head>
  <body style="background-color: mediumorchid" alink="white">
        <div><h1> <font color="white"> Vinny Soft</h1></div> 
        <ul>
            <li><a href="CadConta.jsp">Cadastrar nova conta</a></li>
            <li><a href="CadDeb.jsp">Cadastrar crédito e débito</a></li>
            <li><a href="EmitirExt.jsp">Emissão de Extrato</a></li>
        </ul> <br> <br>
        
        <form action="SOper" method="post" >
          <table border="1">
              <tr>
                  <td><h2>Crédito e Débito</h2></td>
              <tr>
                <td>  Valor da Operação <input type="text" size="23" name="VOper" required="required"> </td>
            <tr>
                <td> CPF do Responsável <input type="text" name="cpf" required="required">  </td>
            <tr>
                <td> id Da Conta <input type="text" size="28" name="idConta" required="required"> </td>
            <tr>
                <td> Tipo da operação <input type="radio" name="oper" value="+" checked > Crédito  <input type="radio" name="oper" value="-" > Débito </td>    
            <tr>  
                <td><input type="submit" name="enviar" value="Enviar"> <input type="reset" name="limpar" value="Limpar"> </td>    
          </table>
            
            </font>
        </form>
    </body>
</html>
