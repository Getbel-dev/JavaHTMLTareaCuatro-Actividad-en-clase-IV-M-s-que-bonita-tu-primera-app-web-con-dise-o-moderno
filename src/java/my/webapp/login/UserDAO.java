/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.webapp.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import my.webapp.database.Database;

public class UserDAO {

    public UserClass validateLogIn(String Email, String Password) { //  ocupo que vaya a buscar los datos a mi base de datos

        try {

            Database db = new Database();
            Connection conn = db.getConnection();

            PreparedStatement pstat = conn.prepareStatement("Select * FROM Users WHERE Email=? And Password=?;");
            pstat.setString(1, Email);
            pstat.setString(2, Password);

            ResultSet rs = pstat.executeQuery();

            while (rs.next()) {

                UserClass user = new UserClass(rs.getInt("Id"),
                        rs.getString("Alias"),
                        Email);

                return user;
            }

            return null;

        } catch (SQLException ex) {

            return null;

        }

    }

}
