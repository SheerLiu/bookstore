package bookstore;
import bookstore.Book;

import java.util.LinkedList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
public class database {
    public static Connection getConnection() {
        String URL = "jdbc:mysql://localhost:3306/bookstore?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
        String username = "root";
        String password = "liujianing";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, username, password);
        } catch (Exception e) {
            System.out.println("Database.getConnection() Error --" + e.getMessage());
            return null;
        }
    }
    public static void release(ResultSet set,Statement stmt,Connection conn){
        if(set!=null){
            try{
                set.close();
            }catch(SQLException e){

                e.printStackTrace();
            }
        }
        if(stmt!=null){
            try{
                stmt.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
        if(conn!=null){

            try{

                conn.close();

            }catch(SQLException e){

                e.printStackTrace();

            }
        }
    }
    public static int insert(String name){
        int a = 0;
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet set = null;
        String bookname=null;
        String image_path=null;
        Double price_current=0.0;
        try {
            conn = database.getConnection();
            pre = conn.prepareStatement("select * from book where bookname = ?");
            pre.setString(1,name);
            set = pre.executeQuery();
            if (set.next()) {
            	bookname=set.getString("bookname");
            	image_path=set.getString("image_path");
            	price_current=set.getDouble("price_current");
            }
            set.first();
            pre = conn.prepareStatement("insert into cart values(?,?,?)");
            pre.setString(1,bookname);
            pre.setString(2,image_path);
            pre.setDouble(3,price_current);
            a = pre.executeUpdate();
            return a;
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            database.release(null,pre,conn);
        }
            return a;
    }
    public static Book select(String name){
    	Connection conn = null;
        PreparedStatement pre = null;
        ResultSet set = null;
        try {
            Book book = new Book();
            conn = getConnection();
            pre = conn.prepareStatement("select * from book where bookname = ?");
            pre.setString(1,name);
            set = pre.executeQuery();
            while (set.next()) {
                book.setbookname(set.getString("bookname"));
                book.setimage_path(set.getString("image_path"));
                book.setauthor(set.getString("author"));
                book.setisbn(set.getString("isbn"));
                book.setpress(set.getString("press"));
                book.setdate(set.getString("date"));
                book.setcomment(set.getString("comment"));
                book.setintro_content(set.getString("intro_content"));
                book.setintro_author(set.getString("intro_author"));
                book.setnum_stock(set.getInt("num_stock"));
                book.setnum_word(set.getInt("num_word"));
                book.setnum_page(set.getInt("num_page"));
                book.setprice_current(set.getDouble("price_current"));
                book.setprice_original(set.getDouble("price_original"));
            }
            return book;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            database.release(set, pre, conn);
        }
        return null;
    }
    
public static List<Book> selectall(){
	Connection conn = null;
    PreparedStatement pre = null;
    ResultSet set = null;
    List<Book> books= new LinkedList<>();
    try {
        
        conn = getConnection();
        pre = conn.prepareStatement("select * from cart");
        set = pre.executeQuery();
        while (set.next()) {
        	Book book = new Book();
            book.setbookname(set.getString("bookname"));
            book.setimage_path(set.getString("image_path"));
            book.setprice_current(set.getDouble("price_current"));
            books.add(book);
        }
        return books;
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        database.release(set, pre, conn);
    }
    return null;
}
}
