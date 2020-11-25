import { createStore, applyMiddleware, combineReducers } from 'redux'
import thunk from 'redux-thunk';
import { composeWithDevTools } from 'redux-devtools-extension';
import ReduxThunk from 'redux-thunk';




import  reducer from './reducers/index'

const intialState = {}

const middleWares = [ ReduxThunk ]; 


const store = createStore(
    reducer,
    
    composeWithDevTools(
        applyMiddleware(...middleWares),
    )
);

export default store;



