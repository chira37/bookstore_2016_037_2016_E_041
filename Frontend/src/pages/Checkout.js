import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux'
import { addLog} from '../redux/actions/AuthActions'
import { clearCart} from '../redux/actions/ProductActions'

import StoreService from '../axios/StoreService'
import { useToasts } from 'react-toast-notifications'


import Button from '@material-ui/core/Button';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Slide from '@material-ui/core/Slide';


import "./styles/Checkout.css";

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
  });

const calculateTotal = (products, addedIds ) => {
  let total = 0;
  
  addedIds.forEach(id => {
    let price = products.find(product => product.id == id).price;
    total = total + price;

  });

  return total;
}


function Checkout(props) {

  const history = useHistory();
  const { addToast } = useToasts()


  const [cardName, setCardName] = useState("");
  const [cardNumber, setCardNumber] = useState("");
  const [coupon, setCoupon] = useState("")
  const [couponApplied , setcouponApplied] = useState(false);
  const [total, setTotal] = useState(props.total || 0);
  const [error, setError] = useState("")
  const [openSuccessDialog, setOpenSuccessDialog] = useState(false)


  const { products, addedIds, user} =props
  


  const pay = e => {
    e.preventDefault();
    setError("");
    if(!cardName) setError("Enter thr card name")
    else if(!cardNumber) setError("Enter thr card number")
    else if(cardNumber.length != 16) setError("Invalid card number")

    else{

      var books = ""
      addedIds.map( id => {
        const book = products.find(product => product.id == id )
        books = books + book.title + ", " 

      })

      const log = {
        "time" : new Date().toString().substring(0, 25),
        "price" : total,
        "books" : books,
        "email" : user.email
      }
      
      props.addLog(log)
        .then( res => {
          console.log(res)
          props.clearCart(user.id)
          setOpenSuccessDialog(true)
        })

        .catch( e =>{
          addToast("Faild to place the order", { appearance: 'error', autoDismiss: true, })
          console.log(e)
        })
    }
  }


  const applyCoupon = e =>{
    e.preventDefault();

    if(couponApplied){
      addToast("Coupon Already Added", { appearance: 'success', autoDismiss: true, })
    }

    else{
      StoreService.getCoupon(coupon)
      .then( (res)=>{
        
        if(!res.data){
          addToast("Coupon is Invalid", { appearance: 'error', autoDismiss: true, })
        }
        else if(Number(res.data.expireDate) < (new Date()).getTime()){
          addToast("Coupon was expired", { appearance: 'error', autoDismiss: true, })
        }

        else{
          setTotal(total - total*(res.data.discount/100))
          addToast("Coupon Added", { appearance: 'success', autoDismiss: true, })
          setcouponApplied(true);
        }
      })
      
      .catch( (error) => {
        addToast("Coupon Not Valid", { appearance: 'error', autoDismiss: true, })
      })
    }
  }

  return (

    <>
      <Dialog
          open={openSuccessDialog}
          fullWidth
          TransitionComponent={Transition}
          keepMounted
          aria-labelledby="alert-dialog-slide-title"
          aria-describedby="alert-dialog-slide-description"
        >
          <DialogTitle id="alert-dialog-slide-title">{"Success"}</DialogTitle>
              <DialogContent>
              <DialogContentText id="alert-dialog-slide-description">
                  Order was placed successfully
              </DialogContentText>
              </DialogContent>
              <DialogActions>
              
              <Button onClick={ ()=>{ history.push("/")}} color="primary">
                  Contiune Shopping
              </Button>
              </DialogActions>
        </Dialog>

      <div className="checkout">
        <div className="checkout_container">
          <h1>Checkout</h1>

          <form>
            <h5>Name</h5>
            <input
              type="text"
              value={cardName}
              onChange={(e) => setCardName(e.target.value)}
            />

            <h5>Number</h5>
            <input
              type="number"
              value={cardNumber}
              onChange={(e) => setCardNumber(e.target.value)}
            />

            <h5>Coupon</h5>
            <div className="checkout_coupon">
              <input
                type="text"
                value={coupon}
                onChange={(e) => setCoupon(e.target.value)}
              />

              <button type='submit' onClick={applyCoupon} className="checkout_couponButton">Apply</button>
              
            </div>
            
            <h6>{error}</h6>
          
            <h5>You will be charged {total}$</h5>
            
            <button type='submit' onClick={pay} className="checkout_signInButton">Pay</button>
          </form>
        </div>
      </div>
    </>
  );
}

const mapStateToProps = (state) => {
  return {
    products : state.product.products,
    addedIds : state.cart.addedIds,
    total: calculateTotal(state.product.products, state.cart.addedIds),
    isAuthenticated: state.auth.isAuthenticated,
    user: state.auth.user
  };
  
  
};


export default connect(mapStateToProps, { addLog, clearCart })(Checkout);




