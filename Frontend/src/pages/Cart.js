import React, { useState, useEffect } from 'react';
import Item from '../components/cart/Item';
import './styles/Cart.css';
import Button from '@material-ui/core/Button';
import { connect } from 'react-redux';
import { useHistory } from "react-router-dom";


const calculateTotal = (products, addedIds ) => {
  let total = 0;
  
  addedIds.forEach(id => {
    let price = products.find(product => product.id == id).price;
    total = total + price;

  });

  return total;
}




function Cart(props) {

  const history = useHistory();
  const {addedIds, products, total, isAuthenticated} = props

  const payNow =()=>{
    if(isAuthenticated){
      history.push('/Checkout');
    }

    else{
      history.push('/SignIn');
    }
  }

  return (
    <div className="cart">
      <div className="cart_mainContainer">
        <h1>Cart</h1>
        {
          addedIds.length > 0 &&
          (
            <>
              {addedIds.map( id => <Item key = {id} data={products.find(product => product.id == id )}/>)}
              <div className='cart_total'>
              <h5>TOTAL {total} $</h5>
              <button type='submit' onClick={payNow}  className="cart_payButton">Pay Now</button>
              </div>
            </>
          )
        }

        {
          addedIds.length == 0 &&
          <h4>Your cart is empty, Please add some items</h4>
        }
      </div>
    </div>
  );
}



const mapStateToProps = (state) => {
  
  return {
    products : state.product.products,
    addedIds : state.cart.addedIds,
    total: calculateTotal(state.product.products, state.cart.addedIds),
    isAuthenticated: state.auth.isAuthenticated
  };
};

export default connect(mapStateToProps, null)(Cart);
