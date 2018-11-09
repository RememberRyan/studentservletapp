package servlets;

import model.StudentsDatabase;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Ryan Alexander on 07/11/2018.
 */
public class AddStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/newStudent.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // collect form data
        String userName = (String) req.getParameter("userName");
        String surname = (String) req.getParameter("surname");
        String studentGroup = (String) req.getParameter("studentGroup");
        String studentID = (String) req.getParameter("studentID");
        String grade = (String) req.getParameter("grade");

        // stores the new data
        StudentsDatabase studentsDatabase = StudentsDatabase.getInstance();
        studentsDatabase.addNewStudent(userName, surname, studentGroup, studentID, grade);
    }
}
