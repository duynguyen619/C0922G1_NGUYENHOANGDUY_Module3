package repository;

import model.Users;

import java.util.List;

public interface IUsersRepository {
    List<Users> selectAllUser();
    List<Users> selectUserByCountry(String country);
    Users selectUserById(int id);
    boolean insertUser(Users users);
    boolean deleteUser(int id);
    boolean updateUser(Users user);
}
