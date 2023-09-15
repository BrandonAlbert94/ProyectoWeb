package hotel.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.dao.MySqlTarjetaDAO;
import hotel.entidad.Tarjeta;

/**
 * Servlet implementation class ServletTarjeta
 */
@WebServlet("/ServletTarjeta")
public class ServletTarjeta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTarjeta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Recuperar el parámetro acción
        String tipo = request.getParameter("accion");
        // Validar tipo
        if (tipo.equals("grabar"))
            grabarTarjeta(request, response);
        else if (tipo.equals("lista"))
            listarTarjeta(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void listarTarjeta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        // Crear atributo
        request.setAttribute("tarjetas", new MySqlTarjetaDAO().findAll());
        // Dirección a la página "Tarjeta.jsp"
        request.getRequestDispatcher("/Tarjeta.jsp").forward(request, response);
	}
	
	private void grabarTarjeta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recuperar los valores de los controladores
        String num_tarj, fecha_cadu_tarj, nomb_clie, pat_clie, mat_clie;
        num_tarj = request.getParameter("num_tarj");
        fecha_cadu_tarj = request.getParameter("fecha_cadu_tarj");
        nomb_clie = request.getParameter("nomb_clie");
        pat_clie = request.getParameter("pat_clie");
        mat_clie = request.getParameter("mat_clie");

        // Crear objeto de la clase Tarjeta
        Tarjeta bean = new Tarjeta();
        // Setear
        bean.setNumeroTarjeta(Integer.parseInt(num_tarj));
        bean.setFechaCaducidad(fecha_cadu_tarj);
        bean.setNombreCliente(nomb_clie);
        bean.setPaternoCliente(pat_clie);
        bean.setMaternoCliente(mat_clie);
        // Invocar al método save y enviar el objeto "bean"
        int estado = new MySqlTarjetaDAO().save(bean);
        // Validar estado
        if (estado == 1) {
        	String url = request.getContextPath() + "/ServletTarjeta?accion=lista";
            response.sendRedirect(url);
        } else {
            System.out.println("No");
        }
    }

}
