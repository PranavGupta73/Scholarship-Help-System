package com.mycompany.scholarshipportal;
import java.sql.*;
import javax.swing.*;


public class DB{
Connection con = null;
java.sql.PreparedStatement pst;
public static Connection dbconnect()
{
try {
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship_portal", "root", "pranavgupta" );
return conn;
}
catch(Exception e2)
{
System.out.println(e2.getStackTrace());
return null;
}
}
}