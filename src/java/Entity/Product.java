/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author MinhHieu
 */
public class Product {
    private int MedicineID;
    private String Name;
    private String Description;
    private double Price;
    private int Quantity;
    private String Unit;

    public Product() {
    }

    public Product(int MedicineID, String Name, String Description, double Price, int Quantity, String Unit) {
        this.MedicineID = MedicineID;
        this.Name = Name;
        this.Description = Description;
        this.Price = Price;
        this.Quantity = Quantity;
        this.Unit = Unit;
    }

    public Product(String Name, String Description, double Price, int Quantity, String Unit) {
        this.Name = Name;
        this.Description = Description;
        this.Price = Price;
        this.Quantity = Quantity;
        this.Unit = Unit;
    }
    

    public int getMedicineID() {
        return MedicineID;
    }

    public void setMedicineID(int MedicineID) {
        this.MedicineID = MedicineID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public String getUnit() {
        return Unit;
    }

    public void setUnit(String Unit) {
        this.Unit = Unit;
    }
    
    
}
