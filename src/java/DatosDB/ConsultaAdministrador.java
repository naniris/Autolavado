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
 *
 * @author naniz
 */
public class ConsultaAdministrador extends ActionSupport implements SessionAware{
    
    
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
    
    public List<ConsultaAdministrador> ConsultaAdministrador = new ArrayList<ConsultaAdministrador>(); 

    public List<ConsultaAdministrador> getConsultaAdministrador() {
        Administrador administrador =  new Administrador();
        administrador.ConectarBD();
        ConsultaAdministrador adm = new ConsultaAdministrador(); 
        adm.consultaAdministrador();
        return ConsultaAdministrador;
        
    }

    public void setConsultaAdministrador(List<ConsultaAdministrador> ConsultaAdministrador) {
        this.ConsultaAdministrador = ConsultaAdministrador;
    }

    
    private Map<String,Object>sesion;

    public Map<String, Object> getSesion() {
        return sesion;
    }

    public void setSesion(Map<String, Object> sesion) {
        this.sesion = sesion;
    }

  
    public String consultaA = "error";
    public String consultaAdministrador(){
    Administrador adm = new Administrador();    
    adm.ConectarBD();
        try {
            String consultaAdministrador = "select * from administradores";
            PreparedStatement datosAdministrador = (PreparedStatement)adm.conexionBaseDatos.prepareStatement(consultaAdministrador);
            ResultSet infoAdmin = datosAdministrador.executeQuery();
                while(infoAdmin.next()){
                    
                    ConsultaAdministrador administrador = new ConsultaAdministrador();
                    administrador.setNick_adm(infoAdmin.getString("nickUsuario"));
                    administrador.setNombre_adm(infoAdmin.getString("nombreUsuario"));
                    administrador.setApaterno_adm(infoAdmin.getString("apellidoP"));
                    administrador.setAmaterno_adm(infoAdmin.getString("apellidoM"));
                    administrador.setDireccion_adm(infoAdmin.getString("direccion"));
                    administrador.setTelefono_adm(infoAdmin.getString("telefono"));
                    administrador.setPasswd_adm(infoAdmin.getString("contrasena"));
                    
                    this.ConsultaAdministrador.add(administrador);
                }
                
            consultaA = "success";
        } catch (Exception e) {
            consultaA = "error";
        }
        return consultaA;
    }
    
    @Override
    public String execute(){
        Administrador administrador =  new Administrador();
        administrador.ConectarBD();
        ConsultaAdministrador adm = new ConsultaAdministrador(); 
        adm.consultaAdministrador();
        this.ConsultaAdministrador = administrador.getConsultaAdministrador();
         return SUCCESS;
     }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sesion=map;
    }
    
}
