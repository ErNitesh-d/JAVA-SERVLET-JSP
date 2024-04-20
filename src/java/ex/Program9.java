package ex;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Program9")
public class Program9 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Program9() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("sFName", request.getParameter("txtFName"));
        session.setAttribute("sMName", request.getParameter("txtMName"));
        session.setAttribute("sLName", request.getParameter("txtLName"));
        session.setAttribute("sDOB", request.getParameter("txtDOB"));
        session.setAttribute("sAddress", request.getParameter("txtAddress"));

        response.sendRedirect("home1.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String usr = request.getParameter("txtUsr");
        String pwd = request.getParameter("txtPwd");

        if (usr.equals("nitin") && pwd.equals("nitin@123")) {
            out.println("<html><head><title>Details</title></head><body><form>");
            out.println("<div style='background:lightgreen; /* position: absolute;*/");
            out.println("top:2in; height:200px; width:300px;left:5in;border-style:solid'>");
            out.println("<form><table cellpadding='2px'>");
            out.println("<tr><td>First Name :</td><td><input type='text' name='txtFName'></td></tr>");
            out.println("<tr><td>MiddleName :</td><td><input type='text' name='txtMName'></td></tr>");
            out.println("<tr><td>Last Name :</td><td><input type='text' name='txtLName'></td></tr>");
            out.println("<tr><td>Date of Birth :</td><td><input type='text' name='txtDOB'></td></tr>");
            out.println("<tr><td>Address :</td><td><input type='text' name='txtAddress'></td></tr>");
            out.println("<tr><td colspan='2'><input type='submit' value='OK'>");
            out.println("<input type='reset' value='Clear'></td></tr>");
            out.println("</table></form></div></body></html>");
        } else {
            response.sendRedirect("Prog9.jsp");
        }
    }
}
