package servlets;

import dto.Student;
import model.StudentsDatabase;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static database.DatabaseConfiguration.getSession;

/**
 * Created by Ryan Alexander on 07/11/2018.
 */
public class StudentListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentsDatabase studentsDatabase = StudentsDatabase.getInstance();

        // retrieve all the attributes from studentsDatabase
        List<Student> students = studentsDatabase.getStudents();


        // how to retrieve data from Hibernate database
        List<Student> students1 = getSession().createCriteria(Student.class).list();


        req.setAttribute("students", students1);

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
//                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/students.jsp");
//                requestDispatcher.forward(req, resp);
//                return;
//            }
//        }
//
//        //Writing to the browser what the user sees
//        PrintWriter writer = resp.getWriter();
//        writer.println("You can't view this page. Please go to login - http://localhost:8080/login");
//
//    }


}
