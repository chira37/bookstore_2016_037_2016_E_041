import React, {useEffect} from 'react'
import './Product.css'
import Button from '@material-ui/core/Button';
import Rating from '@material-ui/lab/Rating';
import { connect } from 'react-redux'
import { useHistory } from "react-router-dom";
import { addToCart} from '../../redux/actions/ProductActions'
import { Link } from "react-router-dom";
  

function Product(props) {

    const history = useHistory();
    const {id, title, author, price, description, fileData} = props.data;
    const { addedIds} = props;

    const addToCart = (id) => {
        if(!addedIds.includes(id)){
            props.addToCart(id);
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

    return (
        <div key={id} className='product'>
            <img className='product_img'
                 src={`data:image/png;base64,${fileData}`}
            >
            </img>
            <div className='product_detailsContiner'>
                <Link className="product_titleLink" to={`/ProductDetails/${id}`}>
                    <h5 className='product_title' >
                        {title}
                    </h5>
                </Link>
                <h5 className='product_text'>
                    Author: {author}
                </h5>

                <h5 className='product_text'>
                    {description}
                </h5>

                <Rating name="half-rating-read" defaultValue={4.5} precision={0.5} readOnly size={"small"} />

                <div className= 'product_buttonContainer'>
                    <Button onClick={()=> buyNow(id)} style={{marginRight: 20}} variant="outlined" color="primary" disableElevation>
                        BUY NOW
                    </Button>
                    <Button onClick={() => addToCart(id)}  variant="contained" color="primary" disableElevation>
                        ADD TO CART
                    </Button>
                </div>
            
            
            </div>
            
        </div>
    )
}

const mapStateToProps = (state) => ({
    addedIds : state.cart.addedIds
})



export default connect(mapStateToProps, { addToCart })(Product);
