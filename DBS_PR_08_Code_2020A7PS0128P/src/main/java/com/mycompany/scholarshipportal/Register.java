package com.mycompany.scholarshipportal;
import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.awt.event.ActionEvent;
import javax.swing.*;

public class Register extends JFrame {

private JPanel contentPane;
private JTextField textField;
private JTextField textField_1;
private JTextField textField_2;
private JTextField textField_3;
private JTextField textField_4;
private JPasswordField passwordField;

/**
* Launch the application.
*/
public static void main(String[] args) {
EventQueue.invokeLater(new Runnable() {
public void run() {
try {
Register frame = new Register();
frame.setVisible(true);
} catch (Exception e) {
e.printStackTrace();
}
}
});
}

/**
* Create the frame.
*/
Connection con = null;
public Register() {
con = DB.dbconnect();

setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
setBounds(100, 100, 550, 466);
contentPane = new JPanel();
contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
setContentPane(contentPane);
contentPane.setLayout(null);

JLabel lblNewLabel = new JLabel("Sign Up Form");
lblNewLabel.setBounds(139, 5, 262, 34);
lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 28));
contentPane.add(lblNewLabel);

JLabel lblNewLabel_1 = new JLabel("Student ID");
lblNewLabel_1.setBounds(27, 69, 100, 39);
lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 16));
lblNewLabel_1.setHorizontalAlignment(SwingConstants.LEFT);
contentPane.add(lblNewLabel_1);

JLabel lblNewLabel_2 = new JLabel("Password");
lblNewLabel_2.setFont(new Font("Tahoma", Font.PLAIN, 16));
lblNewLabel_2.setHorizontalAlignment(SwingConstants.LEFT);
lblNewLabel_2.setBounds(27, 182, 86, 28);
contentPane.add(lblNewLabel_2);

JLabel lblNewLabel_3 = new JLabel("College ID");
lblNewLabel_3.setFont(new Font("Tahoma", Font.PLAIN, 16));
lblNewLabel_3.setHorizontalAlignment(SwingConstants.LEFT);
lblNewLabel_3.setBounds(27, 221, 100, 46);
contentPane.add(lblNewLabel_3);

JLabel lblNewLabel_4 = new JLabel("CGPA");
lblNewLabel_4.setHorizontalAlignment(SwingConstants.LEFT);
lblNewLabel_4.setFont(new Font("Tahoma", Font.PLAIN, 16));
lblNewLabel_4.setBounds(27, 272, 86, 46);
contentPane.add(lblNewLabel_4);

JLabel lblNewLabel_5 = new JLabel("Name");
lblNewLabel_5.setFont(new Font("Tahoma", Font.PLAIN, 16));
lblNewLabel_5.setHorizontalAlignment(SwingConstants.LEFT);
lblNewLabel_5.setBounds(28, 119, 85, 39);
contentPane.add(lblNewLabel_5);

JLabel lblNewLabel_6 = new JLabel("Family Income");
lblNewLabel_6.setFont(new Font("Tahoma", Font.PLAIN, 15));
lblNewLabel_6.setHorizontalAlignment(SwingConstants.LEFT);
lblNewLabel_6.setBounds(27, 318, 100, 39);
contentPane.add(lblNewLabel_6);

textField = new JTextField();
lblNewLabel_1.setLabelFor(textField);
textField.setBounds(166, 78, 120, 20);
contentPane.add(textField);
textField.setColumns(10);

textField_1 = new JTextField();
lblNewLabel_5.setLabelFor(textField_1);
textField_1.setBounds(166, 126, 120, 20);
contentPane.add(textField_1);
textField_1.setColumns(10);

textField_2 = new JTextField();
lblNewLabel_3.setLabelFor(textField_2);
textField_2.setBounds(166, 233, 120, 20);
contentPane.add(textField_2);
textField_2.setColumns(10);

textField_3 = new JTextField();
lblNewLabel_4.setLabelFor(textField_3);
textField_3.setBounds(166, 283, 120, 20);
contentPane.add(textField_3);
textField_3.setColumns(10);

textField_4 = new JTextField();
lblNewLabel_6.setLabelFor(textField_4);
textField_4.setBounds(166, 327, 120, 20);
contentPane.add(textField_4);
textField_4.setColumns(10);

passwordField = new JPasswordField();
lblNewLabel_2.setLabelFor(passwordField);
passwordField.setBounds(166, 188, 120, 20);
contentPane.add(passwordField);

JButton btnNewButton = new JButton("Register");
btnNewButton.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
String studentID = textField.getText();
String name = textField_1.getText();
String collegeID = textField_2.getText();
String cgpa = textField_3.getText();
String familyIncome = textField_4.getText();
String password = passwordField.getText();

String query1 = "insert into login values('" + studentID + "', '" + password + "')";
try {
PreparedStatement pst1 = con.prepareStatement(query1);
pst1.executeUpdate();
} catch (SQLException e2) {

e2.printStackTrace();
}

String query2 = "insert into student values('" + studentID + "', '" + name + "', '" + collegeID + "', '" + cgpa + "', '" + familyIncome + "', NULL);";

try {
PreparedStatement pst = con.prepareStatement(query2);
pst.executeUpdate();
String query3 = "update student set sch_id = 'M1' where cg>9.5;" ;
String query4 ="update student set sch_id = 'MCN1' where sch_id is null and cg>8.7 and family_income<1100000;" ; 
String query5 ="update student set sch_id = 'M2' where sch_id is null and cg>9;" ; 
String query6 ="Update student set sch_id = 'MCN2' where sch_id is null and cg>8.0 and family_income<1100000;\n" ;
String query7 ="Update student set sch_id = 'MCN3' where sch_id is null and cg>7.0 and family_income<1100000;\n" ;
String query8 ="Update student set sch_id = 'MCN3' where sch_id is null and cg>6.5 and family_income<1100000;\n" ;
String query9 ="Update student set sch_id = 'MCN4' where sch_id is null and cg>5.9 and family_income<1100000;\n" ;
String query10 ="update student natural join sport set sch_id='SPRT' where sch_id is null and cg>5.5 and position='captain';";

PreparedStatement pst3 = con.prepareStatement(query3);
pst3.executeUpdate();
PreparedStatement pst4 = con.prepareStatement(query4);
pst4.executeUpdate();
PreparedStatement pst5 = con.prepareStatement(query5);
pst5.executeUpdate();
PreparedStatement pst6 = con.prepareStatement(query6);
pst6.executeUpdate();
PreparedStatement pst7 = con.prepareStatement(query7);
pst7.executeUpdate();
PreparedStatement pst8 = con.prepareStatement(query8);
pst8.executeUpdate();
PreparedStatement pst9 = con.prepareStatement(query9);
pst9.executeUpdate();
PreparedStatement pst10 = con.prepareStatement(query10);
pst10.executeUpdate();

dispose();
scholarshipDisplay sd = new scholarshipDisplay(studentID);
sd.show();
} catch (SQLException e1) {

e1.printStackTrace();
}


}
});
btnNewButton.setFont(new Font("Tahoma", Font.PLAIN, 20));
btnNewButton.setBounds(198, 377, 134, 39);
contentPane.add(btnNewButton);

JButton btnNewButton_1 = new JButton("Back");
btnNewButton_1.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
dispose();
frontScreen fs = new frontScreen();
fs.show();
}
});
btnNewButton_1.setFont(new Font("Tahoma", Font.PLAIN, 16));
btnNewButton_1.setBounds(10, 16, 89, 23);
contentPane.add(btnNewButton_1);
}
}
