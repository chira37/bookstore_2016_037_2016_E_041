import React, { useState, useEffect } from "react";
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux'
import  StoreService  from '../../axios/StoreService'
import { updateProduct} from '../../redux/actions/ProductActions'
import { useToasts } from 'react-toast-notifications'

import "./styles/AddProducts.css";

function UpdateProduct(props) {
  const history = useHistory();
  const { addToast } = useToasts();

  const [id, setId] = useState("");
  const [name, setName] = useState("");
  const [author, setAuthor] = useState("");
  const [description, setDescription] = useState("");
  const [price, setPrice] = useState("");
  const [quantity, setQuantity] = useState("");
  const [stopOrder, setStopOrder] = useState();
  const [error, setError] = useState("");



  const validation =()=>{
    if(!name) setError("Book Name is required")
    else if(!author) setError("Book Author is required")
    else if(!price) setError("Book Price is required")
    else if(!quantity) setError("Book Quantity is required")
    else if(!description) setError("Book Description is required")
    else return true
  }

  const update = (e) => {
    e.preventDefault();
    setError("");

    if(validation()){
      const book = {
        "id" : id,
        "title" : name,
        "author" : author,
        "price" : price,
        "quantity" : quantity,
        "description" :description,
        "stopOrder" : stopOrder
      }

    

      props.updateProduct(book )
        .then( res=> {
          addToast("Book was updated successfully", { appearance: 'success', autoDismiss: true, })
          console.log(res)
        })
        .catch( e => {
          addToast("Error", { appearance: 'error', autoDismiss: true, })
          console.log(e)
        })
    }
  };

  const getProductDetails = () => {
        StoreService.getProductByID(props.match.params.id)
            .then(res =>{
                setId(res.data.id);
                setName(res.data.title);
                setAuthor(res.data.author);
                setPrice(res.data.price);
                setQuantity(res.data.quantity);
                setDescription(res.data.description);
                setStopOrder(res.data.stopOrder);
            })
            .catch(e => {console.log("error")})
    }

useEffect(()=>{
    getProductDetails();
}, [])


  return (
    <div className="addProducts">
      <div className="addProducts_container">
        <h1>Update</h1>

        <form>
          <h5>Name</h5>
          <input
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />

          <h5>Author</h5>
          <input
            type="text"
            value={author}
            onChange={(e) => setAuthor(e.target.value)}
          />

          <h5>Price</h5>
          <input
            type="number"
            value={price}
            onChange={(e) => setPrice(e.target.value)}
          />

          <h5>Quantity</h5>
          <input
            type="number"
            value={quantity}
            onChange={(e) => setQuantity(e.target.value)}
          />

          <h5>Description</h5>
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            rows="5"   
          />

          <div className="checkbox">
              <h5>Stop Order</h5>
              <input
                style ={{width: 20, height: 20}}
                type="checkbox"
                defaultChecked = {stopOrder}
                onClick={(e) => {
                  setStopOrder(e.target.checked)
                   console.log(e.target.checked)}}
              />
          </div>
          <h6>{error}</h6>
          
          <button
            type="submit"
            onClick={update}
            className="signIn_signInButton"
          >
            Update
          </button>
        </form>
      </div>
    </div>
  );
}


export default connect(null, { updateProduct })(UpdateProduct);

