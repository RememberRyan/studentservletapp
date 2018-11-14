package dto;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Ryan Alexander on 06/11/2018.
 */
@Entity
@Table(name = "student")
public class Student {
    @Column(name = "name")
    private String name;
    @Column(name = "surname")
    private String surname;
    @Id
    @Column(name = "id")
    //https://stackoverflow.com/a/10997869
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long studentID;
    @Column(name = "Dob")
    private Date dateOfBirth;
    @Column (name = "nationality")
    private String nationality;

    public Student() {
    }

    public Student(String name, String surname, Date dateOfBirth, String nationality) {
        this.name = name;
        this.surname = surname;
        this.studentID = studentID;
        this.dateOfBirth = dateOfBirth;
        this.nationality = nationality;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Long getStudentID() {
        return studentID;
    }

    public void setStudentID(Long studentID) {
        this.studentID = studentID;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
}
