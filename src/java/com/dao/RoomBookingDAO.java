
package com.dao;

import com.connection.MyConnection;
import com.module.RoomBooking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class RoomBookingDAO {
    
    public int getRoomBooking(RoomBooking roomBooking ){
        String customerId=roomBooking.getCustomerId();
        String customerPwd=roomBooking.getCustomerPwd();
        String roomNo=roomBooking.getRoomNo();
        String checkInDate=roomBooking.getCheckInDate();
        String checkOutDate=roomBooking.getCheckOutDate();
        String paymentId=roomBooking.getPaymentId();
        
        Connection con=MyConnection.getCon();
        int row=0;
        
                try {
                        PreparedStatement pStatement=null;
			String sql="insert into room_booking values(?,?,?,?,?,?)";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, customerId);
			pStatement.setString(2, customerPwd);
                        pStatement.setString(3, roomNo);
                        pStatement.setString(4, checkInDate);
			pStatement.setString(5, checkOutDate);
			pStatement.setString(6, paymentId);
		        row= pStatement.executeUpdate();
                        
                        if(row>0){
                            
                        PreparedStatement ps=null;
                        String sql1="update room_status set room_state='reserve' where room_no=?";
                        ps=con.prepareStatement(sql1);
                        ps.setString(1, roomNo);
                        ps.executeUpdate();
                             
                        }
                        


			con.close();
                        
        } catch (SQLException e) {
           
        }
        return row;
    }
    
}
