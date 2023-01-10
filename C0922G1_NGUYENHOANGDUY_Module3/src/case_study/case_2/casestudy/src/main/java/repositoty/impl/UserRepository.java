package repositoty.impl;

import model.employee.User;
import repositoty.BaseRepository;
import repositoty.IUserRepository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private static final String SELECT_ALL_USER = "call get_all_user();";

    @Override
    public List<User> selectAllUser() {
        List<User> userList= new ArrayList<>();
        Connection connection= BaseRepository.getConnectDB();
        try {
            CallableStatement cs = connection.prepareCall(SELECT_ALL_USER);
            ResultSet rs = cs.executeQuery();
            while (rs.next()){
                String userName = rs.getString("username");
                String password = rs.getString("password");
                User user = new User(userName,password);
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }
}
