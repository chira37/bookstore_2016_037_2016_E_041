import React, { useState, useEffect } from 'react';
import './styles/Log.css';
import Button from '@material-ui/core/Button';
import { connect } from 'react-redux';
import { useHistory } from "react-router-dom";
import  StoreService  from "../../axios/StoreService"


function Log(props) {

  const {notifications} = props
  const [logs, setLogs] = useState([])


  useEffect(() => {
    StoreService.getAllLog()
      .then(res =>{
        setLogs(Object.values(res.data))
        
      })

    
  }, [])


  return (
    <div className="log">
      <div className="log_mainContainer">
        <h1>Log</h1>
        {
          logs.length > 0 &&
          (
            <>
              {logs.map( (item) =>
                <div className ='log_item'>
                  <div  className ='log_itemContainer'>
                    <h4 className ='log_itemDetailsTitle'>Order Id : </h4>
                    <h4 className ='log_itemDetails'>{item.id}</h4>
                  </div>

                  <div  className ='log_itemContainer'>
                    <h4 className ='log_itemDetailsTitle'>Time : </h4>
                    <h4 className ='log_itemDetails'>{item.time}</h4>
                  </div>

                  <div  className ='log_itemContainer'>
                    <h4 className ='log_itemDetailsTitle'>Cutomer Email : </h4>
                    <h4 className ='log_itemDetails'>{item.email}</h4>
                  </div>

                  <div  className ='log_itemContainer'>
                    <h4 className ='log_itemDetailsTitle'>Items : </h4>
                    <h4 className ='log_itemDetails'>{item.books}</h4>
                  </div>

                  <div  className ='log_itemContainer'>
                    <h4 className ='log_itemDetailsTitle'>Total Price : </h4>
                    <h4 className ='log_itemDetails'>{item.price} $</h4>
                  </div>

                  <div className="item_devider">
                    
                  </div>                
                </div>

                
              )}
              
            </>
          )
        }

        {
          logs.length == 0 &&
          <h4>There are no active orders</h4>
        }
      </div>
    </div>
  );
}



const mapStateToProps = (state) => {
  
  return {
    notifications : state.auth.notifications,
    
  };
};

export default connect(mapStateToProps, null)(Log);
