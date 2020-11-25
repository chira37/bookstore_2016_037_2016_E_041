import React, {useEffect, useState} from 'react'
import './styles/ProductDetails.css'
import Rating from '@material-ui/lab/Rating';
import Button from '@material-ui/core/Button';
import { connect } from 'react-redux'
import { addToCart } from '../redux/actions/ProductActions'
import { useHistory } from "react-router-dom";

import StoreService from '../axios/StoreService'

function ProductDetails(props) {

    const history = useHistory();
    const { addedIds} = props;
    var [ product, setProduct] = useState(null)


    const getProductDetails = () => {

        StoreService.getProductByID(props.match.params.id)
            .then(res =>{
                setProduct(res.data)
            })
            .catch(e => {console.log("error")})
    }

    const addToCart = (id) => {
        if(!addedIds.includes(id)){
            props.addToCart(id)
        }
    }

    const buyNow = (id)  => {
        if(!addedIds.includes(id)){
            props.addToCart(id);
            history.push('/Cart');
        }

        else{
            history.push('/Cart');
        }
    }

    useEffect(()=>{
        getProductDetails();
    }, [])

    return (
        <>
            { product != null && 
                <div className='productDetails'>
                    <div className='productDetails_mainContainer'>
                        <div className='productDetails_topContainer'>
                            <div className='productDetails_image'>
                                <img 
                                    src={`data:image/png;base64,${product.fileData}`}
                                >
                                </img>
                            </div>

                            <div className='productDetails_details'>
                                <h5 className='product_title'>
                                   {product.title}
                                </h5 >

                                <h5 className='product_text'>
                                    AUTHOR : {product.author}
                                </h5>

                                <h5 className='product_text'>
                                    {product.description}
                                </h5>

                                <div className='rating_box'>
                                    <Rating name="half-rating-read" defaultValue={4.5} precision={0.5} readOnly size={"medium"} />
                                </div>

                                <div className= 'productDetails_buttonContainer'>
                                    <Button onClick={() => {buyNow(product.id)}} style={{marginRight: 20}} variant="outlined" color="primary" disableElevation>
                                        BUY NOW
                                    </Button>
                                    <Button onClick={() => {addToCart(product.id)}}  variant="contained" color="primary" disableElevation>
                                        ADD TO CART
                                    </Button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            }
        </>
    )
}

const mapStateToProps = (state) => {
  
    return {
        addedIds : state.cart.addedIds
    };
};
  

export default connect(mapStateToProps, { addToCart })(ProductDetails);







