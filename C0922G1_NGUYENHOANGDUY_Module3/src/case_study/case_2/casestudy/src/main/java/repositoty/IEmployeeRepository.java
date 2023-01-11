package repositoty;

import model.employee.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeRepository {
    public List<Employee> showList();
    public boolean update(Employee employee);
    public boolean delete(int id);
    public boolean add(Employee employee) throws SQLException;
    public Employee findById(int id);
}
