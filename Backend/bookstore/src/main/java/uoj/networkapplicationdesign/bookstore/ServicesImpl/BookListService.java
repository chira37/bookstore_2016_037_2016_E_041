package uoj.networkapplicationdesign.bookstore.ServicesImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.BookListDAO;
import uoj.networkapplicationdesign.bookstore.ModelImpl.BookData;
import uoj.networkapplicationdesign.bookstore.payload.request.AddBookRequest;

import java.io.IOException;
import java.util.List;

@Service
public class BookListService{

    @Autowired
    private BookListDAO bookListDAO;

    public BookData addBookData(MultipartFile file, AddBookRequest book) throws IOException {

        BookData newBookData = new BookData(
                book.getTitle(),
                book.getAuthor(),
                book.getPrice(),
                book.getQuantity(),
                book.getDescription(),
                StringUtils.cleanPath(file.getOriginalFilename()),
                file.getContentType(),
                file.getBytes(),
                false

        );
        return bookListDAO.save(newBookData);
    }

    public void updateBookData(BookData book) {

        BookData bookData =  bookListDAO.findById(book.getId()).get();
        bookData.setTitle(book.getTitle());
        bookData.setAuthor(book.getAuthor());
        bookData.setPrice(book.getPrice());
        bookData.setQuantity(book.getQuantity());
        bookData.setDescription(book.getDescription());
        bookData.setStopOrder(book.getStopOrder());
        bookListDAO.save(bookData);
    }

    public List<BookData> getAllBookData()  {
        return bookListDAO.findAll();
    }

    public BookData getBookDataByID(int id) {
        return bookListDAO.findById(id).get();
    }

    public String getTitleDataByID(int id) {
        BookData book= bookListDAO.findById(id).get();
        return book.getTitle();
    }

    public void deleteBookDataByID(int id) {
        bookListDAO.deleteById(id);
    }
}
