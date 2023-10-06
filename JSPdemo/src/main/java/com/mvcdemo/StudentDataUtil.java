package com.mvcdemo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
    public static List<Student> getStudent(){
        List<Student> students=new ArrayList<>();
        students.add(new Student("Mariappan","S","mari@gmail.com"));
        students.add(new Student("Balaji","B","balaji@gmail.com"));
        students.add(new Student("Raj","R","raj@gmail.com"));
        students.add(new Student("Jeya","N","jeya@gmail.com"));
        students.add(new Student("Maha","S","mahaS@gmail.com"));
        students.add(new Student("maha","M","mahaM@gmail.com"));

        return students;

    }
}
