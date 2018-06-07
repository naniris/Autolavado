/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DatosDB;

import static DatosDB.Administrador.JDBC_DRIVER;
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
public class Trabajador extends ActionSupport implements SessionAware{
    
    protected String idTrabajador;
    protected String nick_adm;
    protected String nombre_tra;
    protected String apaterno_tra;
    protected String amaterno_tra;
    protected String telefono_tra;

    public String getIdTrabajador() {
        return idTrabajador;
    }

    public void setIdTrabajador(String idTrabajador) {
        this.idTrabajador = idTrabajador;
    }

    public String getNick_adm() {
        return nick_adm;
    }

    public void setNick_adm(String nick_adm) {
        this.nick_adm = nick_adm;
    }

    public String getNombre_tra() {
        return nombre_tra;
    }

    public void setNombre_tra(String nombre_tra) {
        this.nombre_tra = nombre_tra;
    }

    public String getApaterno_tra() {
        return apaterno_tra;
    }

    public void setApaterno_tra(String apaterno_tra) {
        this.apaterno_tra = apaterno_tra;
    }

    public String getAmaterno_tra() {
        return amaterno_tra;
    }

    public void setAmaterno_tra(String amaterno_tra) {
        this.amaterno_tra = amaterno_tra;
    }

    public String getTelefono_tra() {
        return telefono_tra;
    }

    public void setTelefono_tra(String telefono_tra) {
        this.telefono_tra = telefono_tra;
    }
    
    public String resTrabajador="error";
    private Map<String,Object>sesion;

    public Map<String, Object> getSesion() {
        return sesion;
    }
    
   
    public String registrarTrabajador(){
        Administrador adm = new Administrador();
        adm.ConectarBD();
        try {
            if (sesion.containsKey("nick_adm")){
                this.nick_adm=sesion.get("nick_adm").toString();
                String datosTrabajador = "insert into trabajadores value (0,?,?,?,?,?)";
                PreparedStatement datosRegistro=(PreparedStatement)adm.conexionBaseDatos.prepareCall(datosTrabajador);
                datosRegistro.setString(1,nick_adm);
                datosRegistro.setString(2,nombre_tra);
                datosRegistro.setString(3,apaterno_tra);
                datosRegistro.setString(4,amaterno_tra);
                datosRegistro.setString(5,telefono_tra);
                datosRegistro.executeUpdate();
                consultaTrabajador();
                resTrabajador = "success";   
            }
            
        } catch (Exception e) {
            resTrabajador = "error";
        }
        return resTrabajador;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sesion=map;
    }
    
    
    public List<Trabajador> Trabajador = new ArrayList<Trabajador>();

    public List<Trabajador> getTrabajador() {
        return Trabajador;
    }

    public void setTrabajador(List<Trabajador> Trabajador) {
        this.Trabajador = Trabajador;
    }
    
    public String consultaT="error";
    public String consultaTrabajador(){
        Administrador adm = new Administrador();
        adm.ConectarBD();
        try {
            String consultaTrabajador = "select * from trabajadores";
            PreparedStatement datosTrabajador = (PreparedStatement)adm.conexionBaseDatos.prepareStatement(consultaTrabajador);
            ResultSet informacion = datosTrabajador.executeQuery();
                while(informacion.next()){
                    
                    Trabajador trabajador = new Trabajador();
                    trabajador.setIdTrabajador(informacion.getString("idTrabajador"));
                    trabajador.setNick_adm(informacion.getString("nickUsuario"));
                    trabajador.setNombre_tra(informacion.getString("nombre"));
                    trabajador.setApaterno_tra(informacion.getString("apellidoP"));
                    trabajador.setAmaterno_tra(informacion.getString("apellidoM"));
                    trabajador.setTelefono_tra(informacion.getString("telefono"));
                    
                    this.Trabajador.add(trabajador);
                }            
            consultaT = "success";
            
        } catch (Exception e) {
            consultaT = "error";
        }
        
        return consultaT;
    }
    public String detalleT = "error";
    public String DetalleTrabajador(){
    Administrador adm = new Administrador();    
    adm.ConectarBD();
        try {
          String consultaTrabajador = "select * from trabajadores where idTrabajador = '"+idTrabajador+"'";
          PreparedStatement DatosTrabajador = (PreparedStatement)adm.conexionBaseDatos.prepareStatement(consultaTrabajador);
          ResultSet Datos = DatosTrabajador.executeQuery();
          while(Datos.next()){
             
              setIdTrabajador(Datos.getString("idTrabajador"));
              setNick_adm(Datos.getString("nickUsuario"));
              setNombre_tra(Datos.getString("nombre"));
              setApaterno_tra(Datos.getString("apellidoP"));
              setAmaterno_tra(Datos.getString("apellidoM"));
              setTelefono_tra(Datos.getString("telefono"));
              consultaTrabajador();
          }
          detalleT = "success";
        } catch (Exception e) {
          detalleT = "error";
        }
        return detalleT;
    }
    
    public String modificarT = "error";
    public String modificarTrabajador(){
    Administrador adm = new Administrador();
    adm.ConectarBD();
        try {
            String modificarTrabajador = "update trabajadores set nombre=?, apellidoP=?, apellidoM=?, telefono=? where idTrabajador=?";
            PreparedStatement mTrabajador = (PreparedStatement)adm.conexionBaseDatos.prepareStatement(modificarTrabajador);
            mTrabajador.setString(1, nombre_tra);
            mTrabajador.setString(2, apaterno_tra);
            mTrabajador.setString(3, amaterno_tra);
            mTrabajador.setString(4, telefono_tra);
            mTrabajador.setString(5, idTrabajador);
            
            mTrabajador.executeUpdate();
            mTrabajador.close();
            consultaTrabajador();
            modificarT = "success";
        } catch (Exception e) {
            modificarT = "error";
        }
        return modificarT;
    }
    
    public String eliminarT = "error";
    public String EliminarTrabajador(){
    Administrador adm = new Administrador();
    adm.ConectarBD();
        try {
            String eliminarTrabajador = "delete from trabajadores where idTrabajador=?";
            PreparedStatement eTrabajador = (PreparedStatement)adm.conexionBaseDatos.prepareStatement(eliminarTrabajador);
            eTrabajador.setString(1, idTrabajador);
            eTrabajador.executeUpdate();
            consultaTrabajador();
            eliminarT = "success";
        } catch (Exception e) {
            eliminarT = "error";
        }
        
       return eliminarT; 
    }
}

   