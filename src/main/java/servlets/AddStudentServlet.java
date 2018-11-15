package servlets;

import dto.Student;
import model.StudentsDatabase;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import static database.DatabaseConfiguration.getSession;

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
        String userName = req.getParameter("userName");
        String surname = req.getParameter("surname");
        String studentID = req.getParameter("studentID");
        String nationality = req.getParameter("nationality");
        String dateOfBirth = req.getParameter("dateOfBirth");


        // how to save data to Hibernate database
        DateFormat simpleDateFormat = new SimpleDateFormat("MM/DD/YYYY");
        java.sql.Date date = null;
        try {
             date =  new Date(simpleDateFormat.parse(dateOfBirth).getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Session session = getSession();
        // Transaction: this was the deciding factor for successful write to database
        Transaction transaction = session.beginTransaction();
        session.save(new Student(userName, surname, date, nationality));
        session.getTransaction().commit();
        session.close();

        // redirects to url after form 'submit' button
        resp.sendRedirect("/list");


        // stores the new data (temporary store)
        //StudentsDatabase studentsDatabase = StudentsDatabase.getInstance();
        //studentsDatabase.addNewStudent(userName, surname, nationality , studentID, dateOfBirth);
    }


}
