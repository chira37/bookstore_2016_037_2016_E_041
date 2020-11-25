import {
  USER_LOADED,
  USER_LOADING,
  AUTH_ERROR,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT_SUCCESS,
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  ADD_NOTIFICATION
} from '../actions/Types';

const initialState = {
  isAuthenticated: false,
  isLoading: false,
  user: null,
  error: null,
  notifications: []
};

export const authReducer =(state = initialState, action) => {

  switch (action.type) {
    case USER_LOADING:
      return {
        ...state,
        isLoading: true,
        error: '',
      };
    case USER_LOADED:
      return {
        ...state,
        isAuthenticated: true,
        isLoading: false,
        user: action.payload
      };

    case LOGIN_SUCCESS:
      localStorage.setItem("user", JSON.stringify(action.payload));
      return {
        ...state,
        isAuthenticated: true,
        isLoading: false,
        user: action.payload
      };

    case REGISTER_SUCCESS:
      return {
        ...state,
        isLoading: false,
      };

    case AUTH_ERROR:
    case LOGIN_FAIL:
    case LOGOUT_SUCCESS:
    case REGISTER_FAIL:
      localStorage.removeItem('user');
      return {
        ...state,
        token: null,
        user: null,
        isAuthenticated: false,
        isLoading: false,  
        error: action.payload     
      };

    case ADD_NOTIFICATION:

      
      return { ...state, notifications: action.payload };
      
    default:
      return state;
  }
}





