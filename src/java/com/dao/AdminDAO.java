
package com.dao;

import com.connection.MyConnection;
import com.module.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AdminDAO {
    
    public int getAuthenticateAdmin(Admin admin){
        String adminId=admin.getAdminId();
        String adminPwd=admin.getAdminPwd();
        
                Connection con=MyConnection.getCon();
        int rowNum=0;
        
        try {
            		PreparedStatement pStatement=null;
			String sql="select * from logininfo where user_id=? and password=?";
			pStatement=con.prepareStatement(sql);
			pStatement.setString(1, adminId);
			pStatement.setString(2, adminPwd);
			ResultSet rSet=pStatement.executeQuery();
			rSet.last();
			rowNum=rSet.getRow();
			con.close();
        } catch (SQLException e) {
        }
        return rowNum;
    }
    
}
