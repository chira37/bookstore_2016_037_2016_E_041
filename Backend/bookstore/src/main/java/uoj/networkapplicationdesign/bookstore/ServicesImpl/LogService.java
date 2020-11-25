package uoj.networkapplicationdesign.bookstore.ServicesImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.LogDAO;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Log;

import java.util.List;

@Service
public class LogService {

    @Autowired
    private LogDAO logDAO;
    public List<Log> getAllLog(){
        return logDAO.findAll();
    }

    public void addLog(Log log){
        logDAO.save(log);
    }



}
