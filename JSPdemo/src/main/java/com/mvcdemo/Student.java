package com.mvcdemo;

public class Student {
    private String firstName;
    private String lastname;
    private String email;

    public Student(String firstName, String lastname, String email) {
        this.firstName = firstName;
        this.lastname = lastname;
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
