package uoj.networkapplicationdesign.bookstore.ModelImpl;

import javax.persistence.*;


@Entity
@Table(name = "Log")
public class Log {


    @Id
    @GeneratedValue()
    int id;
    String time;
    int price;
    String books;
    String email;

    public Log(){

    }

    public Log( String time, int price, String books, String email) {
        this.time = time;
        this.price = price;
        this.books = books;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getBooks() {
        return books;
    }

    public void setBooks(String books) {
        this.books = books;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
