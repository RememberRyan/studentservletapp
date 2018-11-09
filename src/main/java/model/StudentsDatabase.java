package model;

import dto.Student;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Ryan Alexander on 06/11/2018.
 */
public class StudentsDatabase {
    private static StudentsDatabase studentsDatabase;
    private List<Student> students = new ArrayList<>();
    private StudentsDatabase() {

    }

    public static StudentsDatabase getInstance() {
        if (studentsDatabase == null) {
            studentsDatabase = new StudentsDatabase();
            studentsDatabase.addNewStudent("Barack","Flacka Flames", "7G", "001", "C");
            studentsDatabase.addNewStudent("Donald","Duck", "7F","002", "F");
            studentsDatabase.addNewStudent("George","St. Pierre","7G","003", "A");
        }
        return studentsDatabase;
    }



    // All users:
    // use map to get all the names of the elements within the array
    public  List<String> getAllStudentNames(){
        return students.stream()
                .map(Student::getName)
                .collect(Collectors.toList());
    }

    // use map to get all the attributes of all student users
    public List<Student> getStudents() {
        return students;
    }

    // adding a new user to the array
    public void addNewStudent(
            String name,
            String surname,
            String studentGroup,
            String studentID,
            String grade) {
        students.add(new Student(name,surname,studentGroup,studentID,grade));
    }
}
