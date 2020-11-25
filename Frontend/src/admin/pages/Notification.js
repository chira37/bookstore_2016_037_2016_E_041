import React, { useState, useEffect } from 'react';
import './styles/Notification.css';
import Button from '@material-ui/core/Button';
import { connect } from 'react-redux';
import { useHistory } from "react-router-dom";


function Notification(props) {

  const {notifications} = props


  return (
    <div className="notification">
      <div className="notification_mainContainer">
        <h1>Notification</h1>
        {
          notifications.length > 0 &&
          (
            <>
              {notifications.map( (item) =>
                <h4 className="notification_text">{item}</h4>
              )}
              
            </>
          )
        }

        {
          notifications.length == 0 &&
          <h4 className="notification_text">There are no notifications</h4>
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

export default connect(mapStateToProps, null)(Notification);
