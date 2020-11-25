package uoj.networkapplicationdesign.bookstore.DelegationImpl;


import org.springframework.data.jpa.repository.JpaRepository;
import uoj.networkapplicationdesign.bookstore.ModelImpl.BookData;


public interface BookListDAO extends JpaRepository<BookData, Integer> {


}