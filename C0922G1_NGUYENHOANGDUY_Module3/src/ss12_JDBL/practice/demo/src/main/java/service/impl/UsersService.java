package service.impl;

import model.Users;
import repository.IUsersRepository;
import repository.impl.UsersRepository;
import service.IUsersService;

import java.util.List;

public class UsersService implements IUsersService {
    IUsersRepository usersRepository=new UsersRepository();
    @Override
    public List<Users> selectAllUser() {
        return usersRepository.selectAllUser();
    }

    @Override
    public List<Users> selectUserByCountry(String country) {
        return usersRepository.selectUserByCountry(country);
    }

    @Override
    public Users selectUserById(int id) {
        return usersRepository.selectUserById(id);
    }

    @Override
    public boolean insertUser(Users users) {
        return usersRepository.insertUser(users);
    }

    @Override
    public boolean deleteUser(int id) {
        return usersRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(Users users) {
        return usersRepository.updateUser(users);
    }
}
