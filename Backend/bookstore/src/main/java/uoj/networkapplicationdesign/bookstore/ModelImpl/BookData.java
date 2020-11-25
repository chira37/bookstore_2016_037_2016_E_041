package uoj.networkapplicationdesign.bookstore.ModelImpl;

import javax.persistence.*;

@Entity
@Table(name = "bookdata")
public class BookData  {

    @Id
    @GeneratedValue
    Integer id;
    String title;
    String author;
    float price;
    int quantity = 0;
    String description;
    boolean stopOrder;

    String fileName;
    String fileType;

    @Lob
    private byte[] fileData;


    public BookData(){
        this.title = "TestBook";
        this.author = "TestBookAuthor";
        this.price = 0;
    }
    public BookData( int id, String title, String author, float price, int quantity, String description, String fileName, String fileType, byte[] fileData, boolean stopOrder) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.fileName = fileName;
        this.fileType = fileType;
        this.fileData = fileData;
        this.stopOrder = stopOrder;
    }

    public BookData(String title, String author, float price, int quantity, String description, String fileName, String fileType, byte[] fileData, boolean stopOrder) {
        this.title = title;
        this.author = author;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.fileName = fileName;
        this.fileType = fileType;
        this.fileData = fileData;
        this.stopOrder = stopOrder;
    }

    public BookData(String title, String author, float price, int quantity, String description, boolean stopOrder) {
        this.title = title;
        this.author = author;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.stopOrder = stopOrder;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean getStopOrder() {
        return stopOrder;
    }

    public void setStopOrder(boolean stopOrder) {
        this.stopOrder = stopOrder;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public byte[] getFileData() {
        return fileData;
    }

    public void setFileData(byte[] fileData) {
        this.fileData = fileData;
    }
}
