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
            studentsDatabase.addNewStudent("Barack","Flacka Flames", "001", "Andorra", "10/09/1974");
            studentsDatabase.addNewStudent("Donald","Duck", "002","France", "10/09/1980");
            studentsDatabase.addNewStudent("George","St. Pierre","003","Denmark", "10/09/1924");
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
            String studentID,
            String nationality,
            String dateOfBirth) {
        //students.add(new Student(name,surname,nationality,studentID,dateOfBirth));
    }
}
