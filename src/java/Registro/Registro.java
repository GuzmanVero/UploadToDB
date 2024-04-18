package Registro;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Registro {
    private int id;
    private String nombre;
    private String apellido;
    private String telefono;
    private Conexion oConex;
    
     public Registro(int pId,String pNombre, String pApellido, String pTelefono,Conexion pCon ){
         this.id=pId;
        this.nombre=pNombre;
        this.apellido=pApellido;
        this.telefono=pTelefono;
        this.oConex=pCon;
    }
    public Registro(String pNombre, String pApellido, String pTelefono,Conexion pCon ){
        this.nombre=pNombre;
        this.apellido=pApellido;
        this.telefono=pTelefono;
        this.oConex=pCon;
    }
    public Registro(Conexion pCon){
        this.oConex=pCon;
    }

    public void guardar() {
        if (this.getNombre().length() > 0)
                 {
            try 
            {
                String orden = "INSERT INTO registro(nombre,apellido,telefono) "
                        + "VALUES (?,?,?)";
                PreparedStatement pst = this.oConex.oCon.prepareStatement(orden);
                pst.setString(1, this.getNombre());
                pst.setString(2, this.getApellido());
                pst.setString(3, this.getTelefono());

                // execute the preparedstatement
                pst.execute();
                pst.close();

            } 
            catch (SQLException ee) 
            {int i=1;}
        }
    }

    public ResultSet getTodos() {
        try {
            String orden = "SELECT * FROM registro";
            Statement stmt = this.oConex.oCon.createStatement();
            ResultSet rs= stmt.executeQuery(orden);
            //stmt.close();
            return rs;
        } catch (SQLException ee) {
            return null;
        }

    }
        /*public void modificar() 
    {
//        if (this.nombre.length() > 0
//                && this.id > 0 && this.precio > 0) {
        if (this.getNombre().length() > 0 ) {
            try 
            {
                String orden = 
                        "UPDATE registro SET nombre=?, apellido=?, telefono=? "
                        + "WHERE id=?";
                PreparedStatement pst = this.oConex.oCon.prepareStatement(orden);
                pst.setString(1, this.getNombre());
                pst.setString(2, this.getApellido());
                pst.setString(3, this.getTelefono());
                pst.setInt(4, this.getId());

                // execute the preparedstatement
                pst.execute();
                pst.close();

            } 
            catch (SQLException ee) 
            {}
        }

    }*/

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    

}
