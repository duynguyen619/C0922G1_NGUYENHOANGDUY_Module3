package repositoty;

import model.employee.Position;

import java.util.List;

public interface IPositionRepository {
    List<Position> selectAllPosition();
}
