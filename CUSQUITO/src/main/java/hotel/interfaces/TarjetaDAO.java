package hotel.interfaces;

import java.util.List;
import hotel.entidad.Tarjeta;

public interface TarjetaDAO {
    int save(Tarjeta bean);
    int update(Tarjeta bean);
    int deleteById(int cod);
    Tarjeta findById(int cod);
    List<Tarjeta> findAll();
}
