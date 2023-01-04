package service;

import model.Users;

import java.util.List;

public interface IUsersService {
    List<Users> selectAllUser();
    List<Users> selectUserByCountry(String country);
    Users selectUserById(int id);
    boolean insertUser(Users users);
    boolean deleteUser(int id);
    boolean updateUser(Users users);
}
