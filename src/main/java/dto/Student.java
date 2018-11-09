package dto;

/**
 * Created by Ryan Alexander on 06/11/2018.
 */
public class Student {
    private String name;
    private String surname;
    private String studentGroup;
    private String studentID;
    private String grade;

    public Student(String name, String surname, String studentGroup, String studentID, String grade) {
        this.name = name;
        this.surname = surname;
        this.studentGroup = studentGroup;
        this.studentID = studentID;
        this.grade = grade;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Student(String studentID) {
        this.studentID = studentID;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getStudentGroup() {
        return studentGroup;
    }

    public void setStudentGroup(String studentGroup) {
        this.studentGroup = studentGroup;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getStudentID() {
        return studentID;
    }


}
