package uoj.networkapplicationdesign.bookstore.payload.request;

import javax.persistence.Lob;
import javax.validation.constraints.NotBlank;

public class AddBookRequest {
	@NotBlank
	Integer id;

	@NotBlank
	String title;

	@NotBlank
	String author;

	@NotBlank
	float price;

	@NotBlank
	int quantity = 0;

	@NotBlank
	String description;

	@NotBlank
	String fileName;

	@NotBlank
	String fileType;

	@NotBlank
	byte[] fileData;

	@NotBlank
	boolean stopOrder;

//	public AddBookRequest(@NotBlank Integer id, @NotBlank String title, @NotBlank String author, @NotBlank float price, @NotBlank int quantity, @NotBlank String description) {
//		this.id = id;
//		this.title = title;
//		this.author = author;
//		this.price = price;
//		this.quantity = quantity;
//		this.description = description;
//	}


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

	public boolean getStopOrder() {
		return stopOrder;
	}

	public void setStopOrder(boolean stopOrder) {
		this.stopOrder = stopOrder;
	}

}
