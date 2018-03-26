
package com.dao;

import com.connection.MyConnection;
import com.module.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    
    public int authenticateUser(User user){
        String userId=user.getUserId();
        String password=user.getPassword();
        
        Connection con=MyConnection.getCon();
        int rowNum=0;
        
        try {
            		PreparedStatement pStatement=null;
			String sql="select * from room_booking where customer_id=? and customer_pwd=?";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, userId);
			pStatement.setString(2, password);
			ResultSet rSet=pStatement.executeQuery();
			rSet.last();
			rowNum=rSet.getRow();
			con.close();
        } catch (SQLException e) {
        }
        return rowNum;
    }
    
}
