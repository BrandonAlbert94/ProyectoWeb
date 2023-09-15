package hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import hotel.entidad.Tarjeta;
import hotel.interfaces.TarjetaDAO;
import hotel.utils.MySqlConectar;

public class MySqlTarjetaDAO implements TarjetaDAO {

    @Override
    public int save(Tarjeta bean) {
        int salida = -1;
        Connection cn = null;
        PreparedStatement pstm = null;
        try {
            cn = new MySqlConectar().getConnection();
            String sql = "INSERT INTO tb_tarjeta (num_tarj, fecha_cadu_tarj, nomb_clie, pat_clie, mat_clie) VALUES (?, ?, ?, ?, ?)";
            pstm = cn.prepareStatement(sql);
            pstm.setInt(1, bean.getNumeroTarjeta());
            pstm.setString(2, bean.getFechaCaducidad());
            pstm.setString(3, bean.getNombreCliente());
            pstm.setString(4, bean.getPaternoCliente());
            pstm.setString(5, bean.getMaternoCliente());
            salida = pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null)
                    pstm.close();
                if (cn != null)
                    cn.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return salida;
    }

    @Override
    public int update(Tarjeta bean) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int deleteById(int cod) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public Tarjeta findById(int cod) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Tarjeta> findAll() {
        List<Tarjeta> lista = new ArrayList<Tarjeta>();
        Connection cn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            cn = new MySqlConectar().getConnection();
            String sql = "SELECT * FROM tb_tarjeta";
            pstm = cn.prepareStatement(sql);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Tarjeta tarjeta = new Tarjeta();
                tarjeta.setNumeroTarjeta(rs.getInt("num_tarj"));
                tarjeta.setFechaCaducidad(rs.getString("fecha_cadu_tarj"));
                tarjeta.setNombreCliente(rs.getString("nomb_clie"));
                tarjeta.setPaternoCliente(rs.getString("pat_clie"));
                tarjeta.setMaternoCliente(rs.getString("mat_clie"));
                lista.add(tarjeta);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstm != null)
                    pstm.close();
                if (cn != null)
                    cn.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return lista;
    }
}


