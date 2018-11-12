//package servlets;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.io.PrintWriter;
//
///**
// * Created by Ryan Alexander on 09/11/2018.
// */
//public class LoginUserServlet extends HttpServlet {
//
//    // session starts
//    // this is theoretically steps 1 and 2 of listed todo for day87 notes
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String userName = req.getParameter("userName");
//        String password = req.getParameter("password");
//
//        if(password.equals("getThePasswordFromJDBC_Connection")){
//            HttpSession session = req.getSession();
//            session.setAttribute("sessionKey", "random-string-generated-G2slkgjljLKekljs39");
//            // save the generated string to the DB, because this servlet is on the server
//            PrintWriter writer = resp.getWriter();
//            writer.println("Welcome " + student.getName);
//            return;
//        }
//
//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/newStudent.jsp");
//        requestDispatcher.forward(req, resp);
//    }
//
//
//    // for LoginUserServlet
//    // LOGIN-SESSION doGet - Viktors head start
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        HttpSession session = req.getSession(false);
//        //session.invalidate(); // should also be in a separate "LogOutUserServlet" and should also be removed from JDBC when cleared
//        if (session != null) {
//            String sessionKey=(String) session.getAttribute("sessionKey-thats-generated");
//            if (sessionKey != null && sessionnKey.equals ("same-stringkeyAsAbove")){
//                req.setAttribute("names", asList("Dominick", "Bond"));
//                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user.jsp");
//                requestDispatcher.forward(req, resp);
//                return;
//            }
//        }
//        PrintWriter writer = resp.getWriter();
//        writer.println("You are not logged in. Log in via this url: http://localhost:8080/login");
//    }
//}
