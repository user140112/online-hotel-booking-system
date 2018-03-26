
package com.dao;

import com.connection.MyConnection;
import com.module.UserRegistration;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistrationDAO {
    
    public void getRegister(UserRegistration userRegistration){
        String name=userRegistration.getName();
        String contactNo=userRegistration.getContactNo();
        String email=userRegistration.getEmail();
        String country=userRegistration.getCountry();
        
        Connection con=MyConnection.getCon();
        
        try {
                        PreparedStatement pStatement=null;
			String sql="insert into registerinfo values(?,?,?,?)";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, name);
			pStatement.setString(2, contactNo);
                        pStatement.setString(3, email);
                        pStatement.setString(4, country);
			pStatement.executeUpdate();

			con.close();
        } catch (SQLException e) {
        }
        
    }
    
}
