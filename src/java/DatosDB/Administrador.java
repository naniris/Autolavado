package DatosDB;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.mysql.jdbc.jdbc2.optional.*;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.SessionAware;

/**
/**
 *
 * @author naniz
 */
public class Administrador {
 
    static final String JDBC_DRIVER="com.mysql.jdbc.Driver";
    
    static final String URL_DB="jdbc:mysql://localhost:3306/autolavado";
    
    static final String USUARIO="root";
    
    static final String CONTRASENA="naniris";
    
    protected String nick_adm;
    protected String nombre_adm;
    protected String apaterno_adm;
    protected String amaterno_adm;
    protected String direccion_adm;
    protected String telefono_adm;
    protected String passwd_adm;
    
    public String getNick_adm() {
        return nick_adm;
    }

    public void setNick_adm(String nick_adm) {
        this.nick_adm = nick_adm;
    }
    
    public String getNombre_adm() {
        return nombre_adm;
    }

    public void setNombre_adm(String nombre_adm) {
        this.nombre_adm = nombre_adm;
    }

    public String getApaterno_adm() {
        return apaterno_adm;
    }

    public void setApaterno_adm(String apaterno_adm) {
        this.apaterno_adm = apaterno_adm;
    }

    public String getAmaterno_adm() {
        return amaterno_adm;
    }

    public void setAmaterno_adm(String amaterno_adm) {
        this.amaterno_adm = amaterno_adm;
    }


    public String getDireccion_adm() {
        return direccion_adm;
    }

    public void setDireccion_adm(String direccion_adm) {
        this.direccion_adm = direccion_adm;
    }

    public String getTelefono_adm() {
        return telefono_adm;
    }

    public void setTelefono_adm(String telefono_adm) {
        this.telefono_adm = telefono_adm;
    }

    public String getPasswd_adm() {
        return passwd_adm;
    }

    public void setPasswd_adm(String passwd_adm) {
        this.passwd_adm = passwd_adm;
    } 
    
    //Conexion
    public String resConexion="error";
    //Variable para el registro del empresario
    public String resRegistroE="error";
    //Variable de conexion a la base de datos
    Connection conexionBaseDatos=null;
    
    //Variable de resultado para el registro empresario
    public String resAdministrador="error";
    
    public String ConectarBD(){
    try{
        Class.forName(JDBC_DRIVER);
         conexionBaseDatos=(Connection)DriverManager.getConnection(URL_DB, USUARIO, CONTRASENA);
         resConexion="success";
        } catch (Exception e) {
         resConexion="error";
        }
        return resConexion;
    }

     public String registrarAdministrador(){
        ConectarBD();
        try {
            String datosAdministrador="insert into administradores values(?,?,?,?,?,?,?)";
            PreparedStatement datosRegistro=(PreparedStatement)conexionBaseDatos.prepareStatement(datosAdministrador);
            datosRegistro.setString(1,nick_adm);
            datosRegistro.setString(2,nombre_adm);
            datosRegistro.setString(3,apaterno_adm);
            datosRegistro.setString(4,amaterno_adm);
            datosRegistro.setString(5,direccion_adm);
            datosRegistro.setString(6,telefono_adm);
            datosRegistro.setString(7,passwd_adm);
            datosRegistro.executeUpdate();
            
            ConsultaAdministrador administrador = new ConsultaAdministrador();
            administrador.consultaAdministrador();
            this.ConsultaAdministrador = administrador.getConsultaAdministrador();
            
            resAdministrador="success"; 
            
            } catch (Exception e) {
                resAdministrador="error";
            }
            return resAdministrador;
    }
     
    
    public List<ConsultaAdministrador> ConsultaAdministrador = new ArrayList<ConsultaAdministrador>(); 

    public List<ConsultaAdministrador> getConsultaAdministrador() {
        return ConsultaAdministrador;
    }

    public void setConsultaAdministrador(List<ConsultaAdministrador> ConsultaAdministrador) {
        this.ConsultaAdministrador = ConsultaAdministrador;
    }

     
     
     
     
     
     public String eliminarA = "error";
     public String EliminarAdministrador(){
        ConectarBD();
         try {
            String eliminarTrabajador = "delete from administradores where nickUsuario=?";
            PreparedStatement eAdministrador = (PreparedStatement)conexionBaseDatos.prepareStatement(eliminarTrabajador);
            eAdministrador.setString(1, nick_adm);
            eAdministrador.executeUpdate();
            ConsultaAdministrador administrador = new ConsultaAdministrador();
            administrador.consultaAdministrador();
            this.ConsultaAdministrador = administrador.getConsultaAdministrador();
            eliminarA = "success";
         } catch (Exception e) {
             eliminarA = "error";
         }
         return eliminarA;
     }
}
