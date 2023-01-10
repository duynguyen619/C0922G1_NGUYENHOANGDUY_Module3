package service;

import model.employee.Employee;

import java.util.List;

public interface IEmployee {
    List<Employee> selectAllEmployee();
    boolean deleteEmployee(int id);
}
