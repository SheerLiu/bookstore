package bookstore;

public class Book {
	String category, title, body, imageURL;
    String inventory, author,publishing_house, publishing_date,pack;
    int bookid, pagescount, wordscount;
    double ourprice, price;
    public Book(String category, String title, String body, String imageURL, String inventory, String author, String publishing_house,String publishing_date,String pack,int bookid, double ourprice,double price,int pagescount,int wordscount) {
        this.category = category;
        this.title = title;
        this.body = body;
        this.imageURL = imageURL;
        this.author = author;
        this.inventory = inventory;
        this.bookid = bookid;
        this.publishing_house = publishing_house;
        this.publishing_date = publishing_date;
        this.pack=pack;
        this.ourprice=ourprice;
        this.price=price;
        this.wordscount=wordscount;
        this.pagescount=pagescount;
    }
}
