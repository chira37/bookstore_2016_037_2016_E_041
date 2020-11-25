import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux'
import { addProduct} from '../../redux/actions/ProductActions'
import { useToasts } from 'react-toast-notifications'

import "./styles/AddProducts.css";

function AddProduct(props) {
  const history = useHistory();
  const { addToast } = useToasts();

  const [name, setName] = useState("");
  const [author, setAuthor] = useState("");
  const [description, setDescription] = useState("");
  const [price, setPrice] = useState("");
  const [quantity, setQuantity] = useState("");
  const [error, setError] = useState("");
  const [imageFile, setImageFile] = useState(undefined);


  const validation =()=>{
    if(!name) setError("Book Name is required")
    else if(!author) setError("Book Author is required")
    else if(!price) setError("Book Price is required")
    else if(!quantity) setError("Book Quantity is required")
    else if(!description) setError("Book Description is required")
    else if(!imageFile) setError("Book image required")

    else return true
  }

  const add = (e) => {
    e.preventDefault();
    setError("");

    if(validation()){
      const book = {
        "title" : name,
        "author" : author,
        "price" : price,
        "quantity" : quantity,
        "description" :description,
      }

      props.addProduct(imageFile[0], book )
        .then( res => {
          setName("")
          setAuthor("")
          setPrice("")
          setQuantity("")
          setDescription("")
          addToast("Book was added successfully", { appearance: 'success', autoDismiss: true, })
          console.log(res);
        })
        .catch( e => {
          addToast("Error", { appearance: 'error', autoDismiss: true, })
          console.log(e)
        })

    }
  };


  return (
    <div className="addProducts">
      <div className="addProducts_container">
        <h1>Add book</h1>

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

          <h5>Image</h5>
          <input
            type="file"
            //value={file}
            onChange={(e) => setImageFile(e.target.files)}
          />


          <h6>{error}</h6>
          
            
          
          <button
            type="submit"
            onClick={add}
            className="signIn_signInButton"
          >
            Add
          </button>
        </form>
      </div>
    </div>
  );
}


export default connect(null, { addProduct })(AddProduct);

