/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.*;
import java.util.*;
/**
 *
 * @author joann
 */
public class DB {
    public static PreparedStatement getPreparedStatement(String sql) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        
        Connection con = DriverManager.getConnection(
        "jdbc:sqlserver://localhost\\MSSQLSERVER01;database=INVOICE",
                "sa","student");
        ps = con.prepareStatement(sql);
        
        return ps;
    }
    
//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        getPreparedStatement("select * from Invoices");
//    }
}
