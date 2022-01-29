package com.atymtay.spring.mvc;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Employee {
    @Size(min=3, message = "Name must be at least 3 symbols")
    private String name;

    @NotBlank(message = "Please write correct")
    @NotEmpty(message = "Surname must be filled")
    private String surname;

    @Min(value = 500, message = "must be greater than 499")
    private int salary;

    private String department;
    private String gender;
    private String[] languages;


    @Pattern(regexp = "7\\d{2}-\\d{3}-\\d{2}-\\d{2}", message = "please use pattern 7(xx)-(xxx)-(xx)-(xx)")
    private String phoneNumber;

}
