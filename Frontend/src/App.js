import React, {useEffect, useState} from 'react';
import Nav from './components/Nav'
import { useIdleTimer } from 'react-idle-timer'


import './App.css';
import ProductDetails from './pages/ProductDetails.js';
import Home from './pages/Home.js';
import Cart from './pages/Cart.js';
import store from '../src/redux/Store';
import { Router, Switch, Route } from 'react-router-dom';
import { ToastProvider } from 'react-toast-notifications'

import { Provider } from 'react-redux';
import SignIn from './pages/SignIn';
import SignUp from './pages/SignUp';
import Checkout from './pages/Checkout';

import AdminHome from '../src/admin/pages/AdminHome';
import Log from '../src/admin/pages/Log';
import Notification from '../src/admin/pages/Notification';
import AddProduct from '../src/admin/pages/AddProduct';
import UpdateProduct from '../src/admin/pages/UpdateProduct'


import AddCoupon from '../src/admin/pages/AddCoupon';

import createHistory  from 'history/createBrowserHistory'

import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Slide from '@material-ui/core/Slide';



export const history = createHistory ()

const Transition = React.forwardRef(function Transition(props, ref) {
  return <Slide direction="up" ref={ref} {...props} />;
});


function App() {

  const [open, setOpen] = React.useState(false);

  const handleStay = () => {
    setOpen(false);
  };


  const handleOnIdle = event => {
    
    if(store.getState().auth.isAuthenticated){
      setOpen(true);
      setTimeout( () => {
          store.dispatch({type:"LOGOUT_SUCCESS"})
          setOpen(false);
          history.push('/SignIn')
    }, 1000 * 30 );
    }
  }



  const { getRemainingTime } = useIdleTimer({
    timeout: 1000 * 60 * 30,
    onIdle: handleOnIdle,
    debounce: 500
  })

  return (

    <>
    <Dialog
        disableEscapeKeyDown
        disableBackdropClick
        fullWidth
        open={open}
        TransitionComponent={Transition}
        onClose={handleStay}
        aria-labelledby="alert-dialog-slide-title"
        aria-describedby="alert-dialog-slide-description"
      >
        <DialogTitle id="alert-dialog-slide-title">{"Session Expiring"}</DialogTitle>
        <DialogContent>
          <DialogContentText id="alert-dialog-slide-description">
            you will be logged out within 30 second
          </DialogContentText>
        </DialogContent>
        <DialogActions>
        </DialogActions>
      </Dialog>



    <Router history={history} >
      <ToastProvider placement = {'bottom-right'}>
        <Provider store={store}>
          <Nav/>
          <Switch>
            <Route path="/" exact component={Home} />
            <Route path="/ProductDetails/:id" component={ProductDetails} />
            <Route path="/Cart" component={Cart} />
            <Route path="/SignIn" component={SignIn} />
            <Route path="/SignUp" component={SignUp} />
            <Route path="/Checkout" component={Checkout} />
            <Route path="/AddProduct" component={AddProduct} />
            <Route path="/AddCoupon" component={AddCoupon} />
            <Route path="/Admin" component={AdminHome}/>
            <Route path="/UpdateProduct/:id" component={UpdateProduct}/>
            <Route path="/Notification" component={Notification}/>
            <Route path="/Log" component={Log}/>
          </Switch>
        </Provider>
      </ToastProvider>
    </Router>
    </>
  );
}

export default App;
