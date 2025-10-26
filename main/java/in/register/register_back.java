package in.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import in.dataBase.dataBaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/registerForm")
public class register_back extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session = req.getSession();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String gender = req.getParameter("gender");
        String city = req.getParameter("city");

        try (Connection con = dataBaseConnection.takeConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO student (name, email, password, gender, city) VALUES (?, ?, ?, ?, ?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, gender);
            ps.setString(5, city);

            int n = ps.executeUpdate();

            if (n > 0) {
            	if (n > 0) {
            	    session.setAttribute("registered", true);
            	    session.setAttribute("msg", "Registration Successful! Please login now.");
            	    resp.sendRedirect("registerPage.jsp"); 
            	}
            } else {
                session.setAttribute("msg", "Registration Failed. Please try again.");
                resp.sendRedirect("registerPage.jsp");
            }

        } catch (Exception e) {
            session.setAttribute("msg", "Error: " + e.getMessage());
            resp.sendRedirect("index.html");
        }
    }
}
