import {header, authHeader, uploadHeader} from "./http";

import axios from 'axios';
const API_URL = 'http://localhost:8080/api';


// books

const getProducts = () => {
  return axios.get(API_URL + "/book/viewBookData", { headers : header() } );
};

const getProductByID = (id) => {
  return axios.get(API_URL + `/book/findBookByID/${id}`, { headers : header() });
};

const addProduct = (file, book) =>{

  let data = new FormData();
  data.append("file", file);
  data.append("bookData", JSON.stringify(book))

  return axios.post(API_URL + '/book/addBookData', data, { headers : uploadHeader() });
}

const updateProduct = ( data ) =>{


  //data.append("bookData", JSON.stringify(book))
  console.log(data)

  return axios.put(API_URL + '/book/updateBookData', data, { headers : authHeader() });
}

const deleteProductByID = (id) => {
  return axios.delete(API_URL + `/book/deleteBookByID/${id}`, { headers : authHeader() });
};



// cart

const addToCart = (userId, bookId) => {
  console.log(authHeader())
  return axios.put( API_URL + `/cart/addToCart/${userId}/${bookId}`, null, { headers : authHeader() });
};

const removeFromCart = (userId, bookId) => {
  return axios.delete( API_URL + `/cart/removeFromCart/${userId}/${bookId}`, { headers : authHeader() });
};

const updateCart = (userId, data) => {
  return axios.put( API_URL + `/cart/updateCart/${userId}`, data, { headers : authHeader() });
};


const removeAllFromCart = (userId) => {
  return axios.delete( API_URL + `/cart/removeAllFromCart/${userId}`, { headers : authHeader() });
};

const getCartItems = (userId) => {
  return axios.delete( API_URL + `/cart/getCartItems/${userId}`, { headers : authHeader() });
};

//auth

const signIn = (data) => {
  return axios.post(API_URL + "/auth/signin", data, { headers : header() });
};

const signUp = (data) => {
  return axios.post(API_URL + "/auth/signup", data, { headers : header() });
};

// coupon

const getAllCoupon = () =>{
  return axios.get(API_URL + "/coupon/getAllCoupon", { headers : authHeader()});
}

const addCoupon = (data) =>{
  return axios.post(API_URL + "/coupon/addCoupon",  data, { headers : authHeader()});
}


const deleteCoupon = (id) =>{
  return axios.delete(API_URL + `/coupon/deleteCoupon/${id}`, { headers : authHeader()});
}


const getCoupon = (id) =>{
  return axios.get(API_URL + `/coupon/getCoupon/${id}`, { headers : authHeader()});
}


// log

const addLog = (data) =>{
  return axios.post(API_URL + "/log/addLog",  data, { headers : authHeader()});
}

const getAllLog = () =>{
  return axios.get(API_URL + "/log/getAllLog", { headers : authHeader()});
}




export default {
  getProducts,
  getProductByID,
  addProduct,
  updateProduct,
  deleteProductByID,

  addToCart,
  removeFromCart,
  updateCart,
  removeAllFromCart,
  getCartItems,
  signIn,
  signUp,

  getAllCoupon,
  addCoupon,
  getCoupon,
  deleteCoupon,

  addLog,
  getAllLog

}
  
