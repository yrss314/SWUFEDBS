package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Administrator
 */
public class loginbean {

    String id;
    String name, password, flag;//登录时用到

    String phone;
    float score, total;//用户查看个人信息用到

    String old_password, new_password, backnews = "";//用户修改个人信息（电话和密码）
  float newscore=0;//充值的时候需要
    float addscore=0;//score是原来的
    //展示个人订单的时候，需要的是一些内容重新展示到jsp页面
    float finalmoney=0;
    
   String [][] tableRecord=null;

   public void setAddscore(float addscore){
        this.addscore=addscore;
    }
         
 public void setNewscore(float newscore){
        this.newscore=newscore;
    }
 
    public String[][] getTableRecord() {
        return tableRecord;
    }

    public void setTableRecord(String[][] tableRecord) {
        this.tableRecord = tableRecord;
    }
   

    public String getOld_password() {
        return old_password;
    }

    public void setOld_password(String old_password) {
        this.old_password = old_password;
    }

    public String getNew_password() {
        return new_password;
    }

    public void setNew_password(String new_password) {
        this.new_password = new_password;
    }

    public String getBacknews() {
        return backnews;
    }

    public void setBacknews(String backnews) {
        this.backnews = backnews;
    }

    
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    boolean ss;

    public boolean isSs() {
        return ss;
    }

    public void setSs(boolean ss) {
        this.ss = ss;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public float getAddscore(){
        return addscore;
    }

    public float getNewscore(){
        return newscore;
    }
      public float getFinalmoney() {
        return finalmoney;
    }

    public void setFinalmoney(float num) {
        this.finalmoney=num;
    }
}
