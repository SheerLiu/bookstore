package bookstore;

public class Book {
	String bookname,image_path;
    String author,press, date,isbn;
    int num_page, num_word,num_stock;
    String comment,intro_content,intro_author;
    double price_current, price_original;
    public Book() {
    	
    }
    public Book(String bookname, String image_path, int num_stock, String author, String press,String date,String isbn, double price_current,double price_original,int num_page,int num_word,String comment,String intro_content,String intro_author) {
        this.bookname = bookname;
        this.image_path = image_path;
        this.author = author;
        this.num_stock = num_stock;
        this.isbn = isbn;
        this.press = press;
        this.date = date;
        this.price_current=price_current;
        this.price_original=price_original;
        this.num_word=num_word;
        this.num_page=num_page;
        this.comment=comment;
        this.intro_content=intro_content;
        this.intro_author=intro_author;
    }
    public String getbookname() {

        return this.bookname;
    }

    public void setbookname(String name) {
        this.bookname = name;
    }

    public String getimage_path() {
        return this.image_path;
    }

    public void setimage_path(String image_path) {
    	this.image_path = image_path;
    }

    public String getauthor() {
        return this.author;
    }

    public void setauthor(String author) {
    	this.author = author;
    }
    public int getnum_stock() {

        return this.num_stock;
    }

    public void setnum_stock(int num_stock) {
        this.num_stock = num_stock;
    }
    public String getisbn() {

        return this.isbn;
    }

    public void setisbn(String isbn) {
        this.isbn = isbn;
    }
    public String getpress() {

        return this.press;
    }

    public void setpress(String press) {
        this.press = press;
    }
    public String getdate() {

        return this.date;
    }

    public void setdate(String date) {
        this.date = date;
    }
    public String getcomment() {

        return this.comment;
    }

    public void setcomment(String comment) {
        this.comment = comment;
    }
    public String getintro_content() {

        return this.intro_content;
    }

    public void setintro_content(String intro_content) {
        this.intro_content = intro_content;
    }
    public String getintro_author() {

        return this.intro_author;
    }

    public void setintro_author(String intro_author) {
        this.intro_author = intro_author;
    }
    public int getnum_word() {

        return this.num_word;
    }

    public void setnum_word(int num_word) {
        this.num_word = num_word;
    }
    public int getnum_page() {

        return this.num_page;
    }

    public void setnum_page(int num_page) {
        this.num_page = num_page;
    }
    public double getprice_current() {

        return this.price_current;
    }

    public void setprice_current(double price_current) {
        this.price_current = price_current;
    }
    public double getprice_original() {

        return this.price_original;
    }

    public void setprice_original(double price_original) {
        this.price_original = price_original;
    }
}

