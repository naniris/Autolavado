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
public class Servicio extends ActionSupport implements SessionAware{

    protected String idTrabajador;
    protected String carros_ser;
    protected String nombre_tra;
    protected String apaterno_tra;
    protected String monto_ser;
    protected String sueldo_tra;
    protected String ganancias_ser;

    public String getIdTrabajador() {
        return idTrabajador;
    }

    public void setIdTrabajador(String idTrabajador) {
        this.idTrabajador = idTrabajador;
    }

    public String getCarros_ser() {
        return carros_ser;
    }

    public void setCarros_ser(String carros_ser) {
        this.carros_ser = carros_ser;
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

    public String getMonto_ser() {
        return monto_ser;
    }

    public void setMonto_ser(String monto_ser) {
        this.monto_ser = monto_ser;
    }

    public String getSueldo_tra() {
        return sueldo_tra;
    }

    public void setSueldo_tra(String sueldo_tra) {
        this.sueldo_tra = sueldo_tra;
    }

    public String getGanancias_ser() {
        return ganancias_ser;
    }

    public void setGanancias_ser(String ganancias_ser) {
        this.ganancias_ser = ganancias_ser;
    }

    
        
    public String resServicio = "error";
    public String registrarServicio(){
         Administrador adm = new Administrador();    
         adm.ConectarBD();
        try {
       
            String datosServicio="insert into servicios values(?,?,?,?,?,?,?)";
            PreparedStatement datosRegistro=(PreparedStatement)adm.conexionBaseDatos.prepareStatement(datosServicio);
            datosRegistro.setString(1,idTrabajador);
            datosRegistro.setString(2,carros_ser);
            datosRegistro.setString(3,nombre_tra);
            datosRegistro.setString(4,apaterno_tra);
            datosRegistro.setString(5,monto_ser);
            datosRegistro.setString(6,sueldo_tra);
            datosRegistro.setString(7,ganancias_ser);
            datosRegistro.executeUpdate();
            consultaServicio();
            resServicio = "success";
           
        } catch (Exception e) {
            resServicio = "error";  
            }
            return resServicio;
    }
    
    private Map<String,Object>sesion;

    public Map<String, Object> getSesion() {
        return sesion;
    }
    
    public List<Servicio> Servicio = new ArrayList<Servicio>();

    public List<Servicio> getServicio() {
        return Servicio;
    }

    public void setServicio(List<Servicio> Servicio) {
        this.Servicio = Servicio;
    }
    
    public String consultaS="error";
    public String consultaServicio(){
        Administrador adm = new Administrador();
        adm.ConectarBD();
        try {
            String consultaServicio = "select * from servicios";
            PreparedStatement datosServicio = (PreparedStatement)adm.conexionBaseDatos.prepareStatement(consultaServicio);
            ResultSet informacion = datosServicio.executeQuery();
                while(informacion.next()){
                    
                    Servicio servicio = new Servicio();
                    servicio.setIdTrabajador(informacion.getString("idTrabajador"));
                    servicio.setCarros_ser(informacion.getString("carrosLavados"));
                    servicio.setNombre_tra(informacion.getString("nombre"));
                    servicio.setApaterno_tra(informacion.getString("apellidoP"));
                    servicio.setMonto_ser(informacion.getString("montoTotal"));
                    servicio.setSueldo_tra(informacion.getString("sueldoT"));
                    servicio.setGanancias_ser(informacion.getString("totalG"));
                    
                    this.Servicio.add(servicio);
                }            
            consultaS = "success";
            
        } catch (Exception e) {
            consultaS = "error";
        }
        
        return consultaS;
    }
    
    
    @Override
    public void setSession(Map<String, Object> map) {
           this.sesion=map;
    }
    
}
