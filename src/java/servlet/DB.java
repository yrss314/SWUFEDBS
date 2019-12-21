/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Administrator
 */
public class DB {
    public static Connection dbCon(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbs?useUnicode=true&characterEncoding=gb2312", "root","root"); //�������������Ҫ
        }
        catch(Exception e){
            System.out.printf("err");
        };
        return con;
    }
}
