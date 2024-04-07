/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MinhHieu
 */
public class ProductDAO extends DBConnect {

    public int insertProduct(Product pro) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[Medicines]\n"
                + "           ([Name]\n"
                + "           ,[Description]\n"
                + "           ,[Price]\n"
                + "           ,[Quantity]\n"
                + "           ,[Unit]\n"
                + "           ,[Price2])\n"
                + "     VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, pro.getName());
            pre.setString(2, pro.getDescription());
            pre.setDouble(3, pro.getPrice());
            pre.setInt(4, pro.getQuantity());
            pre.setString(5, pro.getUnit());
            pre.setDouble(6, pro.getPrice2());
            n = pre.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return n;
    }

    public int updateProduct(Product pro) {
        int n = 0;
        String sql = "UPDATE [dbo].[Medicines]\n"
                + "   SET [Name] = ?"
                + "      ,[Description] = ?"
                + "      ,[Price] = ?"
                + "      ,[Quantity] = ?"
                + "      ,[Unit] = ?"
                + "      ,[Price2] = ?"
                + " WHERE [MedicineID] = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, pro.getName());
            pre.setString(2, pro.getDescription());
            pre.setDouble(3, pro.getPrice());
            pre.setInt(4, pro.getQuantity());
            pre.setString(5, pro.getUnit());
            pre.setDouble(6, pro.getPrice2());
            pre.setInt(7, pro.getMedicineID());
            n = pre.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return n;
    }

    public int deleteProduct(int id) {
        int n = 0;
        String sql = "DELETE FROM [dbo].[Medicines]\n"
                + "      WHERE [MedicineID] = " + id;
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (Exception e) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, e);

        }
        return n;
    }

    

    public List getAllProduct(String sql) {
        List<Product> list = new ArrayList<>();
        try {

            Statement state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String nameM = rs.getString(2);
                String des = rs.getString(3);
                double price = rs.getDouble(4);
                int quantity = rs.getInt(5);
                String unit = rs.getString(6);
                double price2 = rs.getDouble(7);
                Product pro = new Product(id, nameM, des, price, quantity, unit,price2);
                list.add(pro);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

}
