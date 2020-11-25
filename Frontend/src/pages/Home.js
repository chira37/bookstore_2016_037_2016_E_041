import React, {useEffect} from 'react'
import Header from '../components/Nav'
import './styles/Home.css'
import Product from '../components/home/Product'
import FeaturedProduct from '../components/home/FeaturedProduct'
import { connect } from 'react-redux'
import {fetchProducts, addToCart, removeFromCart, loadCart} from '../redux/actions/ProductActions'
import { loadUser} from '../redux/actions/AuthActions'
import Button from '@material-ui/core/Button';
import { useHistory } from "react-router-dom";


import { useSelector } from 'react-redux'


function Home(props) {

    const history = useHistory();
    const test =(e, id, state) =>{
        
        

    }

    const { products, auth} = props;


    useEffect( ()  => {
        props.fetchProducts();
        load();

        


        //props.loadCart();

    }, [])

    const load  = async ()  => {
        await props.loadUser();
        if(auth.isAuthenticated && auth.user.roles.includes("ROLE_ADMIN")){
            history.push("/Admin");
        }
    }


    return (
        
        <div className='home'>
            {/* <div className='home_imageContainer'>
                
            </div>
            <div className='home_featuredContainer'>
                
                
           
            </div>

            <div className='home_nav'>
                sdasd
           
            </div> */}

            <div className='home_productList'>
                {
                    products.map( (product) => {
                        if( product.quantity != 0 && !product.stopOrder){
                            return(
                                <Product key= {product.id} data={product}/>
                            )
                        }                        
                    })
                }
            </div>
        </div>
    )
}




const mapStateToProps = (state) => {
  
    return {
      products : state.product.products,
      auth: state.auth,

    };
};
  
export default connect(mapStateToProps, { fetchProducts, addToCart, removeFromCart, loadUser, loadCart })(Home);
