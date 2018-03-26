
package com.dao;

import com.connection.MyConnection;
import com.module.RemoveCustomer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RemoveCustomerDAO {
    
    public int getRemoveCustomer(RemoveCustomer removeCustomer){
        String r_customerId=removeCustomer.getR_customerId();
        String r_date=removeCustomer.getR_date();
        
        Connection con=MyConnection.getCon();
        int rowNum=0;
        
        try {
            		PreparedStatement pStatement=null;
			String sql="delete from room_booking where customer_id=? or check_out_date=?";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, r_customerId);
			pStatement.setString(2, r_date);
			rowNum=pStatement.executeUpdate();
			con.close();
        } catch (SQLException e) {
        }
        return rowNum;
    }
    
}
