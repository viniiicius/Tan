/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vinicius
 */
@WebServlet(name = "CadOper", urlPatterns = {"/CadOper"})
public class SOper extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           }

    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    Float Voperacao = Float.parseFloat(request.getParameter("oper") + request.getParameter("VOper").replace(",", ".")); 
    String CPF = request.getParameter("cpf"); 
    int idConta = Integer.parseInt(request.getParameter("idconta"));
        GregorianCalendar c = new GregorianCalendar();
        SimpleDateFormat data = new SimpleDateFormat("YYYY/MM/dd H:mm:ss");
    
    response.getWriter().println("<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Cadastrar Conta</title>\n" +
"    </head>\n" +
"    <body>\n" +
"        <div><h1>Vinny Soft</h1></div>\n" +
"        <ul>\n" +
"            <li><a href=\"CadConta.jsp\">Cadastrar nova conta</a></li>\n" +
"            <li><a href=\"CadDeb.jsp\">Cadastrar crédito e débito</a></li>\n" +
"            <li><a href=\"EmitirExt.jsp\">Emissão de Extrato</a></li>\n" +
"        </ul> <br> <br>");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost/tan", "root", "");
            PreparedStatement ps = conexao.prepareStatement("INSERT INTO `operacao`(`DataOperacao`, `ValorOperacao`, `CPFResponsavelOperacao`, `idContaCorrente`) VALUES (?,?,?,?)");
            ps.setString(1, data.format(c));
            ps.setFloat(2, Voperacao);
            ps.setString(3, CPF);
            ps.setInt(4, idConta);
            ps.execute();
            conexao.close();
            response.getWriter().println("Cadastro realizado!");
        } catch (SQLException ex) {
            Logger.getLogger(SCad.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SCad.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.getWriter().println("</body>");
        response.getWriter().println("</html>");
   
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
