import { combineReducers } from 'redux';

import { productsReducer } from './ProductReducer'
import { cartReducer } from './CartReducer'
import { authReducer } from './AuthReducer'


export default combineReducers({
    product : productsReducer,
    cart : cartReducer,
    auth: authReducer
})

