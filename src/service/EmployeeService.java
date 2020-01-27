package service;

import java.util.ArrayList;
import java.util.List;


import bean.Employee;

public class EmployeeService {

    public static List<Employee> getEmployee(Employee employee) {
        List<Employee> employees = new ArrayList<>();
        employees.add(employee);
        return employees;
    }
}