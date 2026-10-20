
package my.webapp.tienda;


public class ClaseTienda {

    private int Id;
    private String name;
    private double precio;
    private int stock;

    public ClaseTienda(int Id, String name, double precio, int stock) {
        this.Id = Id;
        this.name = name;
        this.precio = precio;
        this.stock = stock;
    }

    public ClaseTienda() {

    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

}
