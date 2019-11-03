
package ticketingsystem;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import java.sql.*;

public class ConnectionEasy {
    
    public java.sql.Connection connect()
    {
        java.sql.Connection conn = null;
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/easy ticket system2";
           conn = DriverManager.getConnection(url,"root","");  
        }
        catch(Exception ex)
        {
            ex.printStackTrace(); 
        }
        return conn;
    }
  
    public ResultSet Select(String sql)
    {
        ResultSet rs = null;
        try
       {
           Statement stm = connect().createStatement();
           rs = stm.executeQuery(sql);
       }
       catch(Exception e)
       {
        JOptionPane.showMessageDialog(null,"Something wrong with Sql "+e);
         return null;
       }
        return rs;
    }
    public void Update(String sql)
    {
        try
        {
            Statement stm = connect().createStatement();
            stm.executeUpdate(sql);
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,"Wrong Sql  "+e);
        }
    }

    public Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
