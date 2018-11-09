<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 07/11/2018
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of students</title>
    <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

    <!-- Inline CSS based on choices in "Settings" tab -->
    <style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>

</head>
<body>
<h1>Enrol a new student</h1>
<%--<form method="post">--%>
<%--<label>Name</label>--%>
<%--<input type="text" name="userName" title="Name">--%>

<%--<label>Password</label>--%>
<%--<input type="password" name="password" title="Password">--%>
<%--<button type="submit">Submit</button>--%>
<%--</form>--%>

 <%--// https://formden.com/form-builder/--%>
<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
<div class="bootstrap-iso">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="formden_header">
                    <h2>
                        Registration Form
                    </h2>
                    <p>
                        (JDBC) form to register new users
                    </p>
                </div>
                <form method="post">
                    <div class="form-group ">
                        <label class="control-label requiredField" for="studentID">
                            Student ID
                            <span class="asteriskField">
        *
       </span>
                        </label>
                        <input class="form-control" id="studentID" name="studentID" type="text"/>
                        <span class="help-block" id="hint_studentID">
       the student ID should be unique
      </span>
                    </div>
                    <div class="form-group ">
                        <label class="control-label requiredField" for="userName">
                            Name
                            <span class="asteriskField">
        *
       </span>
                        </label>
                        <input class="form-control" id="userName" name="userName" type="text"/>
                        <span class="help-block" id="hint_userName">
       first name
      </span>
                    </div>
                    <div class="form-group ">
                        <label class="control-label requiredField" for="surname">
                            Surname
                            <span class="asteriskField">
        *
       </span>
                        </label>
                        <input class="form-control" id="surname" name="surname" type="text"/>
                        <span class="help-block" id="hint_surname">
       the student's class form
      </span>
                    </div>
                    <div class="form-group ">
                        <label class="control-label requiredField" for="studentGroup">
                            Select a Choice
                            <span class="asteriskField">
        *
       </span>
                        </label>
                        <select class="select form-control" id="studentGroup" name="studentGroup">
                            <option selected="selected" value="">
                            </option>
                            <option value="7A">
                                7A
                            </option>
                            <option value="7B">
                                7B
                            </option>
                            <option value="7C">
                                7C
                            </option>
                            <option value="7D">
                                7D
                            </option>
                            <option value="7F">
                                7F
                            </option>
                            <option value="7G">
                                7G
                            </option>
                        </select>
                        <span class="help-block" id="hint_studentGroup">
       choose correct form  group for the student
      </span>
                    </div>
                    <div class="form-group ">
                        <label class="control-label " for="grade">
                            Select a Choice
                        </label>
                        <select class="select form-control" id="grade" name="grade">
                            <option selected="selected" value="">
                            </option>
                            <option value="A">
                                A
                            </option>
                            <option value="B">
                                B
                            </option>
                            <option value="C">
                                C
                            </option>
                            <option value="D">
                                D
                            </option>
                            <option value="F">
                                F
                            </option>
                            <option value="U">
                                U
                            </option>
                        </select>
                        <span class="help-block" id="hint_grade">
       select the grade
      </span>
                    </div>
                    <div class="form-group">
                        <div>
                            <button class="btn btn-primary " name="submit" type="submit">
                                Submit
                            </button>

                            <button class="btn btn-secondary " name="reset" type="reset">
                                Reset
                            </button>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
