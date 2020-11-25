import React, {useEffect, useState} from 'react'
import './styles/AdminHome.css'
import { connect } from 'react-redux'
import {loadUser} from '../../redux/actions/AuthActions'
import { fetchProducts, fetchCoupons, deleteProduct, deleteCoupon } from '../../redux/actions/ProductActions'
import { addNotification }  from '../../redux/actions/AuthActions'
import { useHistory } from "react-router-dom";
import { makeStyles } from '@material-ui/core/styles';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';
import { Link } from "react-router-dom";
import { useToasts } from 'react-toast-notifications'

import Button from '@material-ui/core/Button';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Slide from '@material-ui/core/Slide';



const useStyles = makeStyles({
  table: {
},
});

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
  });


function AdminHome(props) {


    const classes = useStyles();
    const history = useHistory();
    const { addToast } = useToasts()

    const [openDeleteBook, setOpenDeleteBook] = useState(false);
    const [openDeleteCoupon, setOpenDeleteCoupon] = useState(false);

    const [bookId, setBookId] = useState(0);
    const [couponId, setCouponId] = useState(0);



    const { products, coupons } = props;


    const addBook = () => {
        history.push("AddProduct")
    }

    const addCoupon = () => {
        history.push("AddCoupon");

    }

    const deleteBook = () =>{
        setOpenDeleteBook(true);
    }

    const deleteCoupon = () =>{
        setOpenDeleteCoupon(true);
    }

    const deleteBookConfirm = () =>{

        setOpenDeleteBook(false);
        props.deleteProduct(bookId)
            .then((res)=> {
                addToast("Book was deleted successfully", { appearance: 'success', autoDismiss: true, })                
                props.fetchProducts();

            })
            .catch( (e) => {
                addToast("Error", { appearance: 'error', autoDismiss: true, })
                console.log(e)
            })
        
    }

    const deleteCouponConfim = () =>{

        setOpenDeleteCoupon(false);
        props.deleteCoupon(couponId)
            .then((res)=> {      
                addToast("Coupon was deleted successfully", { appearance: 'success', autoDismiss: true, })          
                props.fetchCoupons();
            })
            .catch( (e) => {
                addToast("Error", { appearance: 'error', autoDismiss: true, })
                console.log(e)
            })
    }

    const handleClose = () => {
        setOpenDeleteBook(false);
        setOpenDeleteCoupon(false);
    }



    const checkStock = (books) =>{

        const notifications  = []

        books.map( (book) =>{
            if(book.quantity < 5 && !book.stopOrder){
                const notification = `${book.title} book is reaching to limit, update stock soon`
                notifications.push(notification)
            }
        })

        props.addNotification(notifications);
    }

    useEffect( ()  => {
        props.loadUser();
        props.fetchCoupons();
        props.fetchProducts()
            .then( res =>{
                checkStock(res)
            })

    }, [])



    

    return (

        <>
        <Dialog
        open={openDeleteBook}
        TransitionComponent={Transition}
        keepMounted
        onClose={handleClose}
        aria-labelledby="alert-dialog-slide-title"
        aria-describedby="alert-dialog-slide-description"
        >
            <DialogTitle id="alert-dialog-slide-title">{"Confirm"}</DialogTitle>
            <DialogContent>
                <DialogContentText id="alert-dialog-slide-description">
                    Are you sure you want to delete
                </DialogContentText>
            </DialogContent>
            <DialogActions>
            <Button onClick={handleClose} color="primary">
                Cancel
            </Button>
            <Button onClick={deleteBookConfirm} color="primary">
                Confim
            </Button>
            </DialogActions>
      </Dialog>

      <Dialog
        open={openDeleteCoupon}
        TransitionComponent={Transition}
        keepMounted
        onClose={handleClose}
        aria-labelledby="alert-dialog-slide-title"
        aria-describedby="alert-dialog-slide-description"
      >
        <DialogTitle id="alert-dialog-slide-title">{"Confirm"}</DialogTitle>
            <DialogContent>
            <DialogContentText id="alert-dialog-slide-description">
                Are you sure you want to delete
            </DialogContentText>
            </DialogContent>
            <DialogActions>
            <Button onClick={handleClose} color="primary">
                Cancel
            </Button>
            <Button onClick={ deleteCouponConfim} color="primary">
                Confirm
            </Button>
            </DialogActions>
      </Dialog>


    
        <div  className='adminHome'>
            <div className='adminHome_bookContainer'>
                <button onClick={addBook}>ADD BOOK</button>

                <Table  className={classes.table} aria-label="caption table">
                    <TableHead>
                    <TableRow>
                        <TableCell>Name</TableCell>
                        <TableCell align="right">Price ($)</TableCell>
                        <TableCell align="right">Quantity</TableCell>
                        <TableCell align="right"></TableCell>
                        <TableCell align="right"></TableCell>
                    </TableRow>
                    </TableHead>
                    <TableBody>
                    {products.map((row) => (
                        <TableRow key={row.id}>
                        <TableCell component="th" scope="row">
                            {row.title}
                        </TableCell>
                        <TableCell align="right">{row.price}</TableCell>
                        <TableCell align="right">{row.quantity}</TableCell>
                        <TableCell align="right">{ <Link to={`/UpdateProduct/${row.id}`}><button className="edit_button">Edit</button></Link>}</TableCell>
                        <TableCell align="right">{ <button className="delete_button" onClick={ () =>{setBookId(row.id); deleteBook()}}>DELETE</button>}</TableCell>
                        </TableRow>
                    ))}
                    </TableBody>
                </Table>
                
            </div>

            <div className='adminHome_bookContainer'>

                <button onClick={addCoupon}>ADD COUPON</button>

                <Table  className={classes.table} aria-label="caption table">
                    <TableHead>
                    <TableRow>
                        <TableCell>Coupon Code</TableCell>
                        <TableCell align="right">Discount ( % )</TableCell>
                        <TableCell align="right"></TableCell>
                    </TableRow>
                    </TableHead>
                    <TableBody>
                    {coupons.map((row) => (
                        <TableRow key={row.id}>
                        <TableCell component="th" scope="row">
                            {row.code}
                        </TableCell>
                        <TableCell align="right">{row.discount}</TableCell>
                        <TableCell align="right">{ <button className="delete_button" onClick={ () =>{setCouponId(row.id); deleteCoupon()}}>DELETE</button>}</TableCell>
                        </TableRow>
                    ))}
                    </TableBody>
                </Table>
                
            </div>   

        </div>

        </>
    )
}




const mapStateToProps = (state) => {
  
    return {
      products : state.product.products,
      coupons: state.product.coupons
    };
};
  
export default connect(mapStateToProps, { loadUser, fetchProducts,  fetchCoupons, deleteProduct, deleteCoupon, addNotification })(AdminHome);


