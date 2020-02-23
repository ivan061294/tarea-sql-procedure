package practicajavasql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Practicajavasql {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/tienda?user=root&password=mysqladmin";
            Connection conect = DriverManager.getConnection(url);
            Statement statement = conect.createStatement();
            String query = "select * from productos";
            ResultSet resul = statement.executeQuery(query);
            String format = "|%1$-3d|%2$-17s|%3$-5d\n";
            while (resul.next()) {
                int id_prod = resul.getInt("id_producto");
                String nombre = resul.getString("nombre");
                int precio = resul.getInt("precio");
                System.out.format(format, id_prod, nombre, precio);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
