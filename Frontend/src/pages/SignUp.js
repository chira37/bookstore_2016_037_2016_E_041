import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux'
import {login, register} from '../redux/actions/AuthActions'
import { useToasts } from 'react-toast-notifications'
import * as EmailValidator from 'email-validator';


import "./styles/SignIn.css";

function SignUp(props) {

  const history = useHistory();
  

  const [username, setUsername] = useState("");
  const [email, setEmail] = useState("");
  const [postalAddress, setpostalAddress] = useState("");
  const [password, setPassword] = useState("");
  const [verifyPassword, setVerifyPassword] = useState("");
  const [error, setError] = useState("");

  const { authError} = props

 const validation = () => {
    if(!username) setError("Username is required")
    else if(!email) setError("Email is required")
    else if(!EmailValidator.validate(email)) setError("Email is invalid")
    else if(!postalAddress) setError("Postal Address is required")
    else if(!password) setError("Email is required")
    else if(password.length < 6) setError("Password at least 6 characters long")
    else if(password != verifyPassword) setError("Password doesn't match")
    else return true
  }


  const signUp = e => {
    e.preventDefault();

    if(validation()){
      const user = { 
        username : username,
        email : email, 
        postalAddress : postalAddress,
        password : password
      }
      props.register(user)
    }
  }

  const signIn = e =>{
    e.preventDefault();
    history.push("/SignIn");
  }

  return (
    <div className="signIn">
      <div className="signIn_container">
        <h1>Sign-Up</h1>

        <form>

        <h5>Username</h5>
          <input
            type="text"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
          />

          <h5>E-mail</h5>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />

          <h5>Postal Address</h5>
          <input
            type="text"
            value={postalAddress}
            onChange={(e) => setpostalAddress(e.target.value)}
          />

          <h5>Password</h5>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />

          <h5>Re-Enter Password</h5>
          <input
            type="password"
            value={verifyPassword}
            onChange={(e) => setVerifyPassword(e.target.value)}
          />
          <h6>{error}</h6>
          <h6>{authError}</h6>
          <button type='submit' onClick={signUp} className="signIn_signInButton">Create Account</button>
        </form>

        
        <button type='submit' onClick={signIn} className="signIn_registerButton">Sign In</button>
      </div>
    </div>
  );
}

const mapStateToProps = (state) => ({

  authError : state.auth.error
  
  
})


export default connect(mapStateToProps, { login, register })(SignUp);


