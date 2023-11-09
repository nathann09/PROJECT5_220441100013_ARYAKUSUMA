/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package project5;
import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Aryaa
 */
public class PROJECT5 {
 private static com.mysql.jdbc.Connection mysqlkonek;
  public static com.mysql.jdbc.Connection koneksiDB() throws SQLException{  
      try{
           String db ="jdbc:mysql://localhost:3306/project5";
           String User ="root";
           String pw ="";
           DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           mysqlkonek = (com.mysql.jdbc.Connection)DriverManager.getConnection(db,User,pw);
//           JOptionPane.showConfirmDialog(null, "koneksi berhasil");    
      }catch (Exception e){
          JOptionPane.showMessageDialog(null,"koneksi gagal"+ e.getMessage());
      }
      return mysqlkonek;
   }
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try{
            java.sql.Connection conn = koneksiDB();
            if (conn != null){
                System.out.println("koneksi berhasil");
            }else{
                System.out.println("koneksi gagal");
            }
        }catch (Exception e){
            System.out.println("terjadi kesalahan :" + e.getMessage());
        }
    }
}
  

