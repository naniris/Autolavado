/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class iniciarSesion extends ActionSupport implements SessionAware {

    protected String nick_adm;
    protected String passwd_adm;

    public String getNick_adm() {
        return nick_adm;
    }

    public void setNick_adm(String nick_adm) {
        this.nick_adm = nick_adm;
    }

    public String getPasswd_adm() {
        return passwd_adm;
    }

    public void setPasswd_adm(String passwd_adm) {
        this.passwd_adm = passwd_adm;
    }
    
    String resUsuarioEnSesion="error";
    private Map<String,Object>sesion;
    
    public List<Trabajador> Trabajador = new ArrayList<Trabajador>();

    public List<Trabajador> getTrabajador() {
        return Trabajador;
    }

    public void setTrabajador(List<Trabajador> Trabajador) {
        this.Trabajador = Trabajador;
    }
    
    
    public String iniciarSesionAdministrador(){
         Administrador adm = new Administrador();
         adm.ConectarBD();
        try {
        String consultaUsuario="select * from administradores where nickUsuario=? and contrasena=?";
        PreparedStatement BuscarUsuario=(PreparedStatement) adm.conexionBaseDatos.prepareStatement(consultaUsuario);
        BuscarUsuario.setString(1,nick_adm);
        BuscarUsuario.setString(2,passwd_adm);
        ResultSet UsuarioEncontrado=BuscarUsuario.executeQuery();
            if (UsuarioEncontrado.next()) {
                 sesion.put("nick_adm", nick_adm);
                 resUsuarioEnSesion="success";
                 Trabajador trabajador = new Trabajador();
                 trabajador.consultaTrabajador();
                 this.Trabajador=trabajador.getTrabajador();
            }
            
        } catch (Exception e) {
            resUsuarioEnSesion="error";
        }
        return resUsuarioEnSesion;
    }
    
    @Override
    public void setSession(Map<String, Object> map) {
        this.sesion=map;
    }
    
}
