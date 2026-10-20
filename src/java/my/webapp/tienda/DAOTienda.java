/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.webapp.tienda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import my.webapp.database.Database;

public class DAOTienda {
    
    
    
    public List<ClaseTienda> getall (){ //  ocupo que vaya a buscar los datos a mi base de datos
        
        try {

            Database db = new Database();

            Connection conn = db.getConnection();

            PreparedStatement pstat = conn.prepareStatement("Select * FROM Productos;");

            ResultSet rs = pstat.executeQuery();

            List<ClaseTienda> tiendaList = new ArrayList<>();

            while (rs.next()) {

                tiendaList.add(new ClaseTienda (rs.getInt("Id"),
                                                rs.getString("Name"),
                                                rs.getDouble("Precio"),
                                                rs.getInt("Stock")));

            }

            return tiendaList;
            
        } catch (SQLException ex) {

            return null;

        } 
        
        
    }
    
    
     public void insert(ClaseTienda tienda) {
        try {
            Database db = new Database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("INSERT INTO Productos (Name, precio, Stock) VALUES (?, ?, ?);");
            
            pstat.setString(1, tienda.getName());
            pstat.setDouble(2, tienda.getPrecio());
            pstat.setInt(3, tienda.getStock());
            
            pstat.executeUpdate();
        } catch (SQLException ex) {
             System.getLogger(DAOTienda.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
     
     
     
      public void delete (int id){
            
             try {
            Database db = new Database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("Delete from Productos where Id =?");
            
            pstat.setInt(1,id);
            
            
            pstat.executeUpdate();
        } catch (SQLException ex) {
             System.getLogger(DAOTienda.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
        
        
        }
    
}
