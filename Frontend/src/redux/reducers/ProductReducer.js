import { 
  FETCH_PRODUCT,
  FETCH_COUPONS,

} from "../actions/Types";

const initialState = {
  products: [],
  coupons: []

};

export const productsReducer = (state = initialState, action) => {
  switch (action.type) {
    case FETCH_PRODUCT:
      return { ...state, products: action.payload };

    case FETCH_COUPONS:
      return { ...state, coupons: action.payload };

    default:
      return state;
  }
};





