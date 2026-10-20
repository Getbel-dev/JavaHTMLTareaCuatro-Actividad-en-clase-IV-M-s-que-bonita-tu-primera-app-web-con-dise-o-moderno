/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.webapp.login;

/**
 *
 * @author Administrador
 */
public class UserClass {

    private int Id;
    private String Alias;
    private String Email;

    public UserClass(int Id, String Alias, String Email) {
        this.Id = Id;
        this.Alias = Alias;
        this.Email = Email;
    }

    public UserClass() {

    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getAlias() {
        return Alias;
    }

    public void setAlias(String Alias) {
        this.Alias = Alias;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

}
