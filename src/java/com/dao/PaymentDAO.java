
package com.dao;

import com.connection.MyConnection;
import com.module.Payment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PaymentDAO {
    
    public int getPaymentInfo(Payment payment){
        
        String paymentId=payment.getPaymentId();
        String cardNo=payment.getCardNo();
        
        Connection con=MyConnection.getCon();
        int row=0;
        
        try {
                        PreparedStatement pStatement=null;
			String sql="insert into payment_info values(?,?)";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, paymentId);
			pStatement.setString(2, cardNo);
			row=pStatement.executeUpdate();
                        
                        con.close();
        } catch (SQLException e) {
        }
        
        return row;
        
    }
    
}
