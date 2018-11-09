<%@ page import="java.util.List" %>
<%@ page import="dto.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.Comparator" %><%--
  Created by IntelliJ IDEA.
  User: Ryan Alexander
  Date: 07/11/2018
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student roster</title>
    <style type="text/css">
        table  {border-collapse:collapse;border-spacing:0;}
        td{font-family:Arial, sans-serif;font-size:14px;padding:10px 35px 10px 5px;border-style:dotted;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
        th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
    </style>
</head>
<body>
<h1>Current students</h1>

<%--Java code gets inserted--%>
<%--<%--%>
<%--List<String> names = (List<String>) request.getAttribute("names");--%>
<%--for (String name: names) {--%>
<%--out.println("<h1>Hello " + name + "</h1>");--%>
<%--}--%>
<%--%>--%>

<%
    // https://stackoverflow.com/a/19782061
    // retrieve your list from the request, with casting
    ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("students");


    /* Filter by grade: https://stackoverflow.com/a/19269328
    This is a server side implementation written in Java8, which is where I should have implemented this solution
     */
    // Collections.sort(students, Comparator.comparing(Student::getGrade));

    // However this is the sort on the front-end, the 'Comparator' function written out in full
    Collections.sort(students, new Comparator<Student>() {
        @Override
        public int compare(Student o1, Student o2) {
            return o1.getGrade().compareTo(o2.getGrade());
        }
    });




// print the information about every category of the list (non-formatted)
    out.println("<h2>non-formated</h2>");
    for (Student student : students) {
        out.println(
                student.getName() + " " + student.getSurname() + " "
                + student.getStudentGroup() + " "
                + student.getStudentID() + " "
                + student.getGrade() + "<br />");
    }


// print the information about every category of the list (formatted)
    // https://www.tablesgenerator.com/html_tables
    out.println("<br />" + "<br />" + "<br />" +
            "<table>" +
            "<caption>Students Grades</caption>" +
                    "<tr>" +
                    "<th>StudentID</th>" +
                    "<th>Name</th>" +
                    "<th>Surname</th>" +
                    "<th>Group</th>" +
                    "<th>Grade</th>" +
                    "</tr>");
    for (Student student : students) {
        out.println("<tr>" +
                "<td>" + student.getStudentID() + "</td>"
                + "<td>" + student.getName() + "</td>"
                + "<td>" + student.getSurname() + "</td>"
                + "<td>" + student.getStudentGroup() + "</td>"
                + "<td>" + student.getGrade() + "</td>" + "</tr>")
        ;
    }
    out.println(
            "</table>");
%>

<%--// My previous attempt at presenting the users dynamically using JSTL: Incomplete --%>
<%-- http://www.javawebtutor.com/articles/jsp/jstl-foreach-tag.php --%>
<%--<c:forEach items="${Student}" var="students">--%>
<%--<c:forEach items="${students}" var="getName">--%>
<%--${mapItem.student} ${student.getAttribute(students)} <br />--%>
<%--</c:forEach>--%>
<%--</c:forEach>--%>


<c:forEach items="${Student}" var="students">
        <c:out value ="${name}" /><p></p>
</c:forEach>

</body>
</html>
