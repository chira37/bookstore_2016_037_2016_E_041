import {
  USER_LOADED,
  USER_LOADING,
  AUTH_ERROR,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT_SUCCESS,
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  ADD_NOTIFICATION
} from "./Types";

import StoreService from '../../axios/StoreService'
import store from '../Store';


import {history} from '../../App'



export const register = (data) =>  {

  return async (dispatch) =>{

    dispatch({ type: USER_LOADING });

    StoreService.signUp(data)
      .then( res => {
        console.log(res);

        dispatch({ type: REGISTER_SUCCESS});
        history.push('/SignIn');
      })
      .catch( error => {

        dispatch({
          type: REGISTER_FAIL,
          payload: error.response.data.message
        })
      
      })
  }
}



export const login = (data) =>  {
  return async (dispatch) =>{

    dispatch({ type: USER_LOADING });

    StoreService.signIn(data)
      .then( res => {

        dispatch({
          type: LOGIN_SUCCESS,
          payload: res.data,
        })

        if(res.data.roles.includes("ROLE_ADMIN")){
          history.push('/Admin');
        }

        else{
          StoreService.updateCart(res.data.id, store.getState().cart.addedIds )
          .then( () =>{
            history.push('/');
          })
          .catch( () => {
            dispatch({
              type: LOGIN_FAIL,
              payload: "Login faild"
            })
          })
        }       
      })
      .catch( () => {
        dispatch({
          type: LOGIN_FAIL,
          payload: "Email or Passwros is wrong"
        })
      })
  }
}


export const loadUser = () =>  {

  return async (dispatch) =>{
    dispatch({ type: USER_LOADING });

    const user = JSON.parse(localStorage.getItem("user"));
    if(user){
      dispatch({
        type: USER_LOADED,
        payload: user
      })
    }
  }       
}


export const logOut = () =>  {

  return async (dispatch) =>{


    dispatch({ type: USER_LOADING });

    dispatch({
      type: LOGOUT_SUCCESS,
    })
      
  }       
}

export const addNotification = (notification) =>  {

  return async (dispatch) =>{
      dispatch({
        type: ADD_NOTIFICATION,
        payload: notification
      })
    
  }       
}

export const addLog = (data) =>   (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.addLog(data)
            .then(res => {
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  


export const fetchLogs = () => (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.getAllLog()
            .then(res => {
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  
