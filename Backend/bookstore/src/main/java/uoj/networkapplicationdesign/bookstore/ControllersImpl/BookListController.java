package uoj.networkapplicationdesign.bookstore.ControllersImpl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import uoj.networkapplicationdesign.bookstore.ModelImpl.BookData;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.BookListService;
import uoj.networkapplicationdesign.bookstore.payload.request.AddBookRequest;
import uoj.networkapplicationdesign.bookstore.payload.request.LoginRequest;
import uoj.networkapplicationdesign.bookstore.payload.request.SignupRequest;
import uoj.networkapplicationdesign.bookstore.payload.response.MessageResponse;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api/book")
@RestController
public class BookListController {

    @Autowired
    private BookListService bookListService;

    @PostMapping(value="/addBookData")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> addBookData(@RequestParam("file") MultipartFile file,@RequestPart("bookData") String request) throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();
        AddBookRequest book = mapper.readValue(request, AddBookRequest.class);

        try {
            bookListService.addBookData(file,book);
            return ResponseEntity.ok( new MessageResponse("Book is added successfully!"));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(new MessageResponse("Fail to add the book"));
        }
    }

    @PutMapping(value="/updateBookData")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> updateBookData(@RequestBody BookData request) throws JsonProcessingException {

//        ObjectMapper mapper = new ObjectMapper();
//        AddBookRequest book = mapper.readValue(request, AddBookRequest.class);
        try {
            bookListService.updateBookData(request);
            return ResponseEntity.ok( new MessageResponse("Book is updated successfully!"));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(new MessageResponse("Fail to update the book"));
        }
    }

    @DeleteMapping(value = "/deleteBookByID/{bookID}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> deleteBookByID(@PathVariable int bookID) {
        try {
            bookListService.deleteBookDataByID(bookID);
            return ResponseEntity.ok( new MessageResponse("Book is deleted successfully!"));
        }
        catch (Exception e){
            return ResponseEntity.badRequest().body(new MessageResponse("Fail to deleted the book"));
        }
    }



    @GetMapping(value="/viewBookData")
    public List<BookData> viewBookData() {

        return bookListService.getAllBookData();
    }

    @GetMapping("/findBookByID/{bookID}")
    public BookData findBookByID(@PathVariable int bookID) {

        return bookListService.getBookDataByID(bookID);
    }


    @GetMapping("/findTitleByID/{bookID}")
    public String findTitleByID(@PathVariable int bookID) {

        return bookListService.getTitleDataByID(bookID);
    }

}

