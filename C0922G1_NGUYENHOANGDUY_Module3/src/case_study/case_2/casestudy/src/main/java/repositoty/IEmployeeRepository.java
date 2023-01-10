package repositoty;

import model.employee.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> selectAllEmployee();
    boolean deleteEmployee(int id);
}
