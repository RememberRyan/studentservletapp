package servlets;

import dto.Student;
import model.StudentsDatabase;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by Ryan Alexander on 07/11/2018.
 */
public class StudentListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentsDatabase studentsDatabase = StudentsDatabase.getInstance();

        // retrieve all the attributes from studentsDatabase
        List<Student> students = studentsDatabase.getStudents();

        req.setAttribute("students", students);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/students.jsp");
        requestDispatcher.forward(req,resp);
    }
//
//    // Session login start
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        HttpSession session = req.getSession(false);
//        if (session != null) {
//            String sessionKey = (String) session.getAttribute("sessionKey");
//            if (sessionKey != null && sessionKey.equals("random-string")) {
//                req.setAttribute("names", asList("Vitya", "Barack"));
//                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user.jsp");
//                requestDispatcher.forward(req, resp);
//                return;
//            }
//        }
//        PrintWriter writer = resp.getWriter();
//        writer.println("You can't view this page. Please go to login - http://localhost:8080/login");
//
//    }


}