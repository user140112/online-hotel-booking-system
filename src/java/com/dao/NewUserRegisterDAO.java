
package com.dao;

import com.connection.MyConnection;
import com.module.NewUserRegister;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class NewUserRegisterDAO {
    
    public int getNewRegister(NewUserRegister newUserRegister){
        
        String customerId=newUserRegister.getUserId();
        String firstName=newUserRegister.getFirstName();
        String lastName=newUserRegister.getLastName();
        String contactNo=newUserRegister.getContactNo();
        String email=newUserRegister.getEmail();
        String country=newUserRegister.getCountry();
        String guestNo=newUserRegister.getGuestNo();
        
        Connection con=MyConnection.getCon();
        int row=0;
        
        try {
                        PreparedStatement pStatement=null;
			String sql="insert into user_register values(?,?,?,?,?,?,?)";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, customerId);
			pStatement.setString(2, firstName);
                        pStatement.setString(3, lastName);
                        pStatement.setString(4, contactNo);
			pStatement.setString(5, email);
			pStatement.setString(6, country);
                        pStatement.setString(7, guestNo);
			row=pStatement.executeUpdate();

			con.close();
        } catch (SQLException e) {
        }
        
        return row;
        
    }
    
}
