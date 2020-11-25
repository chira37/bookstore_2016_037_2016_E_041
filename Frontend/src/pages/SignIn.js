import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux'
import {login, register} from '../redux/actions/AuthActions'

import "./styles/SignIn.css";

function SignIn(props) {

  const history = useHistory();

  const { authError} = props

  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const validation = () => {
    if(!username) setError("Email is required")
    else if(!password) setError("Password is required")
    else return true

  
  }

  const signIn = e => {
    setError("")
    e.preventDefault();

    if(validation()){
      props.login({"username": username, "password": password})
    }

  
  }

  const signUp = e =>{
    e.preventDefault();
    history.push("/SignUp");
  }

  return (
    <div className="signIn">
      <div className="signIn_container">
        <h1>Sign-In</h1>

        <form>
          <h5>Username</h5>
          <input
            type="text"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
          />

          <h5>Password</h5>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />

          <h6>{error}</h6>
          <h6>{authError}</h6>
          <button type='submit' onClick={signIn} className="signIn_signInButton">Sign In</button>
        </form>

        <button type='submit' onClick={signUp} className="signIn_registerButton">Create Account</button>
      </div>
    </div>
  );
}

const mapStateToProps = (state) => ({

  authError : state.auth.error
  
  
})


export default connect(mapStateToProps, { login, register })(SignIn);




