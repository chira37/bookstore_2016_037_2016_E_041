
import { 
  ADD_TO_CART,
  REMOVE_FROM_CART,
  LOAD_CART,
  CLEAR_CART

} from "../actions/Types";

const initialState = {
  addedIds: [],
  total: 0
};




export const cartReducer = (state = initialState, action) => {

  switch (action.type) {

    case ADD_TO_CART:
      console.log(state)
      localStorage.setItem("cart", JSON.stringify({...state, addedIds: [...state.addedIds, action.payload],}))
      return {
        ...state,
        addedIds: [...state.addedIds, action.payload],
      };

    case REMOVE_FROM_CART:
      localStorage.setItem("cart", JSON.stringify({...state, addedIds: [...state.addedIds.filter((item) => item !== action.payload)]}))
      return {
        ...state,
        addedIds: [...state.addedIds.filter((item) => item !== action.payload)],
      };
    
    case LOAD_CART:
      return {
        ...state,
        addedIds: JSON.parse(localStorage.getItem("user")),
      };
    case CLEAR_CART:
      return{
        ...state,
        addedIds: [],
        total: 0,
      }

    default:
      return state;
  }
};

const calculateTotal = (id)=>{
  
}
  


