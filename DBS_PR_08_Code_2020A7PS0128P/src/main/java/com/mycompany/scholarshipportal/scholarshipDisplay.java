/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.scholarshipportal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hp
 */
public class scholarshipDisplay extends javax.swing.JFrame {

    /**
     * Creates new form scholarshipDisplay
     */
    static String userId;
    public scholarshipDisplay(String userId) {
        this.userId=userId;
        
        initComponents();
        String cgpa;
        String college;
        String name;
        String scholarship;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship_portal?allowPublicKeyRetrieval=true&useSSL=false","root","pranavgupta");
            PreparedStatement st = con.prepareStatement("select student_name, c_name, cg, sch_name from student s inner join college c on s.college_id = c.c_id natural join scholarship where student_id='"+userId+"';");
            ResultSet rs = st.executeQuery(); 
            
            if(rs.next()){
                 name = rs.getString(1);
                college = rs.getString(2);
                cgpa = rs.getString(3);
                scholarship = rs.getString(4);                
             }else{
                PreparedStatement st2 = con.prepareStatement("select student_name, c_name, cg from student s inner join college c on s.college_id = c.c_id  where student_id='"+userId+"';");
                ResultSet rs2 = st2.executeQuery();
                rs2.next();
                name = rs2.getString(1);

                college = rs2.getString(2);

                cgpa = rs2.getString(3);
                scholarship = "No Scholarship Available";
                
            }
            jLabel2.setText(name);
            edtcgpa.setText(cgpa);
            edtcollege.setText(college);
            edtscholarship.setText(scholarship);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        fixname = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        fixcollege = new javax.swing.JLabel();
        edtcollege = new javax.swing.JLabel();
        fixcgpa = new javax.swing.JLabel();
        edtcgpa = new javax.swing.JLabel();
        fixscholarship = new javax.swing.JLabel();
        edtscholarship = new javax.swing.JLabel();
        btnbacktohome = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        fixname.setText("Name: ");

        fixcollege.setText("College:");

        edtcollege.setText("jLabel4");

        fixcgpa.setText("CGPA:");

        edtcgpa.setText("jLabel6");

        fixscholarship.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        fixscholarship.setText("Available Scholarships: ");

        edtscholarship.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        edtscholarship.setText("jLabel8");

        btnbacktohome.setText("Back To Home Screen");
        btnbacktohome.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbacktohomeActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(41, 41, 41)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(fixscholarship, javax.swing.GroupLayout.PREFERRED_SIZE, 197, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(fixname)
                                        .addComponent(fixcollege, javax.swing.GroupLayout.Alignment.TRAILING))
                                    .addComponent(fixcgpa, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(27, 27, 27)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 154, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(edtcollege, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(edtcgpa, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addComponent(edtscholarship, javax.swing.GroupLayout.PREFERRED_SIZE, 277, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(102, 102, 102)
                        .addComponent(btnbacktohome, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(26, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(fixname, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(fixcollege)
                    .addComponent(edtcollege))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(fixcgpa)
                    .addComponent(edtcgpa))
                .addGap(44, 44, 44)
                .addComponent(fixscholarship, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(edtscholarship, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnbacktohome, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(9, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnbacktohomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnbacktohomeActionPerformed
        // TODO add your handling code here:
        dispose();
        frontScreen fs= new frontScreen();
        fs.show();
    }//GEN-LAST:event_btnbacktohomeActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(scholarshipDisplay.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(scholarshipDisplay.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(scholarshipDisplay.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(scholarshipDisplay.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {               
                new scholarshipDisplay(userId).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnbacktohome;
    private javax.swing.JLabel edtcgpa;
    private javax.swing.JLabel edtcollege;
    private javax.swing.JLabel edtscholarship;
    private javax.swing.JLabel fixcgpa;
    private javax.swing.JLabel fixcollege;
    private javax.swing.JLabel fixname;
    private javax.swing.JLabel fixscholarship;
    private javax.swing.JLabel jLabel2;
    // End of variables declaration//GEN-END:variables
   
}