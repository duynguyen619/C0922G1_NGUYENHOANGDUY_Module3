package service.impl;

import repositoty.IEmployeeRepository;
import repositoty.impl.EmployeeRepository;
import service.IEmployee;

import java.util.List;

public class Employee implements IEmployee {
    private IEmployeeRepository employeeRepository = new EmployeeRepository();

    @Override
    public List<model.employee.Employee> selectAllEmployee() {
        return employeeRepository.selectAllEmployee();
    }

    @Override
    public boolean deleteEmployee(int id) {
        return employeeRepository.deleteEmployee(id);
    }
}
