package Registro;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    public Connection oCon;
    
    public Conexion(String usuario, String clave)
    {
        try
        {
           Class.forName("com.mysql.jdbc.Driver") ;
           oCon = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/villamar", 
                      usuario, clave) ;
        }
        catch(Exception e) {}
    }
}
