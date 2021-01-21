/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Invoices;

/**
 *
 * @author joann
 */
public class DataAccess {
    public void addNew(Invoices i){
        try {
            PreparedStatement ps = DB.getPreparedStatement("insert into Invoices values(?,?,?,?,?,?)");
            ps.setString(1, i.getTitle());
            ps.setString(2, i.getDate());
            ps.setString(3, i.getVendor());
            ps.setString(4, i.getBuyer());
            ps.setString(5, i.getPrice());
            ps.setString(6, i.getDetail());
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Invoices> getAll(){
        List<Invoices> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DB.getPreparedStatement("select * from Invoices").executeQuery();
            while(rs.next()) {
                Invoices i = new Invoices(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6), rs.getString(7));
                ls.add(i);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<Invoices> getInvoiceById(int id){
        List<Invoices> ls = new LinkedList<>();
        String sql = "select * from Invoices where id =" +id;
        try {
            ResultSet rs = DB.getPreparedStatement(sql).executeQuery();
            while(rs.next()) {
                Invoices i = new Invoices(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6), rs.getString(7));
                ls.add(i);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public void edit(int id, String title, String vendor, String buyer, String price, String detail){
        String sql = "update Invoices set title = ?, vendor = ?, buyer = ?, price = ?, detail = ?" + " where id = ?";
        PreparedStatement ps;
        try {
            ps = DB.getPreparedStatement(sql);
            ps.setString(1, title);
            ps.setString(2, vendor);
            ps.setString(3, buyer);
            ps.setString(4, price);
            ps.setString(5, detail);
            ps.setInt(6, id);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void delete(int id) {
        String sql = "delete Invoices where id = ?";
        PreparedStatement ps;
        try {
            ps = DB.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
