package database.models;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Ryan Alexander on 12/11/2018.
 */
public class StudentGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // auto-generate
    private Long id;

    @Column(name = "student_id")
    private Integer studentId;

    @Column(name = "group_id")
    private Integer groupId;

    public StudentGroup() {

    }
}
