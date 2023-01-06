package repository.impl;

import model.Users;
import repository.BaseRepository;
import repository.IUsersRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsersRepository implements IUsersRepository {

    private static final String SELECT_ALL_USERS = "select * from users ";
    private static final String INSERT_USERS = "insert into users(`name`,email,country) values(?,?,?);";
    private static final String UPDATE_USERS = "update users set name = ?,email= ?, country =? where id = ?;";
    private static final String SELECT_USER_BY_COUNTRY = "select * from users where country like ?";
    private static final String SELECT_USER_BY_ID = "select * from users where id =?";
    private static final String DELETE_USERS = "delete from users where id = ?;";
    @Override
    public List<Users> selectAllUser() {
        List<Users> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_USERS+"ORDER BY name ASC");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                Users users = new Users(id, name, email, country);
                userList.add(users);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public boolean insertUser(Users user) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_USERS);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getCountry());
            return ps.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateUser(Users users) {
        Connection connection = BaseRepository.getConnectDB();
        try  {
            PreparedStatement ps = connection.prepareStatement(UPDATE_USERS);
            ps.setString(1,users.getName());
            ps.setString(2,users.getEmail());
            ps.setString(3,users.getCountry());
            ps.setInt(4,users.getId());
            return ps.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Users> selectUserByCountry(String country) {
        List<Users> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_COUNTRY);
            preparedStatement.setString(1,"%"+ country +"%");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country1 = resultSet.getString("country");

                userList.add(new Users(name, email,country1));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
    @Override
    public Users selectUserById(int id){
        Users users = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_USER_BY_ID);
            ps.setInt(1,id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users = new Users(id,name,email,country);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }

    @Override
    public boolean deleteUser(int id) {
        Connection connection =BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_USERS);
            ps.setInt(1,id);
            return ps.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
