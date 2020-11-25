
import {books} from '../../redux/../TestData';

import StoreService from '../../axios/StoreService'

import store from '../Store';

import {
    FETCH_PRODUCT,
    ADD_TO_CART,
    REMOVE_FROM_CART,
    LOAD_CART,
    FETCH_COUPONS,
    CLEAR_CART

} from '../actions/Types'


export const fetchProducts = () =>   (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.getProducts()
            .then(res => {
                dispatch({
                    type: FETCH_PRODUCT,
                    payload: Object.values(res.data),
                })
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  
   



export const addProduct = (file, book ) =>   (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.addProduct(file, book)
            .then(res => {
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  
   


export const updateProduct = (book) =>  (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.updateProduct(book)
            .then(res => {
                resolve(res.data);
                
            })
            .catch(e => { 
                reject(e);
            })
        });  
   



export const deleteProduct = (productId) =>   (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.deleteProductByID(productId)
            .then(res => {
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  
   



export const fetchCoupons = () =>  {
    return async (dispatch) =>{
        StoreService.getAllCoupon()
            .then(res => {

                dispatch({
                    type: FETCH_COUPONS,
                    payload: Object.values(res.data),
                })
            })
            .catch(e => { console.log(e)})   
    }
}


export const addCoupon = ( coupon ) =>   (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.addCoupon(coupon)
            .then(res => {
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  
   

export const deleteCoupon = (couponId) =>   (dispatch) =>
        new Promise(function(resolve, reject) {
            StoreService.deleteCoupon(couponId)
            .then(res => {
                resolve(res.data);
            })
            .catch(e => { 
                reject(e);
            })

        });  
   




export const addToCart = (productId) => {

    return async (dispatch) => {
        
        if(store.getState().auth.isAuthenticated){

            StoreService.addToCart(store.getState().auth.user.id , productId)
                .then( res => {
                    dispatch({
                        type: ADD_TO_CART,
                        payload : productId
                    })
                })
                .catch(e => { console.log(e) })
        }

        else{
            dispatch({
                type: ADD_TO_CART,
                payload : productId
            })
        }
    }
}


export const removeFromCart = (productId) => {

    return async (dispatch) => {
        

        if(store.getState().auth.isAuthenticated){
            StoreService.removeFromCart(store.getState().auth.user.id, productId)
                .then( res => {
                    dispatch({
                        type: REMOVE_FROM_CART,
                        payload : productId
                    })
                })
                .catch(e => { console.log(e) })
        }


        else{
            dispatch({
                type: REMOVE_FROM_CART,
                payload : productId
            })
        }
    }
}


export const loadCart = () =>  {
    return async (dispatch) =>{

        dispatch({
            type: LOAD_CART,
        })  
    }
}


export const clearCart = (userId) => {

    return async (dispatch) => {
        StoreService.removeAllFromCart(userId)
            .then( res => {
                dispatch({
                    type: CLEAR_CART,
                })
            })
            .catch(e => { console.log(e) })
        }  
}






