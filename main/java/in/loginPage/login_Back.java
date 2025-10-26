package in.loginPage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import in.dataBase.dataBaseConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login_Back extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        HttpSession session = req.getSession();

       
        String email1 = req.getParameter("email");
        String password1 = req.getParameter("password");

        try (Connection con = dataBaseConnection.takeConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE email=? AND password=?")) {

            ps.setString(1, email1);  
            ps.setString(2, password1); 

            try (ResultSet ss = ps.executeQuery()) {

                if (ss.next()) {
                    session.setAttribute("link2", "Login successful!");
                    session.setAttribute("welcome3", ss.getString("name"));
                   RequestDispatcher rs = req.getRequestDispatcher("/welcome.jsp");
                   rs.include(req, resp);
                } else {
                    session.setAttribute("link2", "Email or Password incorrect");
                    resp.sendRedirect("/Login.jsp");
                }
            }

        } catch (SQLException e) {
            
            e.printStackTrace(); 
            session.setAttribute("link2", "Database error. Please try again later.");
            resp.sendRedirect("/Login.jsp");
        } catch (Exception e) {
             e.printStackTrace();
            session.setAttribute("link2", "Server error occurred.");
            resp.sendRedirect("/Login.jsp");
        }
    }
}
