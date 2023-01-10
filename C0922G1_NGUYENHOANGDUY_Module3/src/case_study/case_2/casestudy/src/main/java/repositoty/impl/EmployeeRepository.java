package repositoty.impl;

import model.employee.*;
import repositoty.BaseRepository;
import repositoty.IEmployeeRepository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private static final String SELECT_ALL_EMPLOYEE = "call get_all_employee();";
    private static final String DELETE_EMPLOYEE = "call delete_employee(?);";

    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> employeeList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement cs = connection.prepareCall(SELECT_ALL_EMPLOYEE);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("employee_id");
                String name = rs.getString("employee_name");
                String dateOfBirth = rs.getString("date_of_birth");
                String idCard = rs.getString("id_card");
                double salary = rs.getDouble("salary");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                String positionName = rs.getString("position_name");
                Position position=new Position(positionId,positionName);
                int educationDegreeId = rs.getInt("education_degree_id");
                String educationDegreeName = rs.getString("education_degree_name");
                EducationDegree educationDegree = new EducationDegree(educationDegreeId, educationDegreeName);
                int divisionId = rs.getInt("division_id");
                String divisionName = rs.getString("division_name");
                Division division = new Division(divisionId, divisionName);
                String username = rs.getString("username");
                String password = rs.getString("password");
                User user = new User(username, password);
                Employee employee = new Employee(id, name, dateOfBirth, idCard, salary, phoneNumber, email, address, (model.employee.Position) position, educationDegree, division, user);
                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public boolean deleteEmployee(int id) {
        return false;
    }
}
