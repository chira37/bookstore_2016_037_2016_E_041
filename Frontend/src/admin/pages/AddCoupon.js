import { Code } from "@material-ui/icons";
import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux'
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import { addCoupon} from '../../redux/actions/ProductActions'
import { useToasts } from 'react-toast-notifications'



import "./styles/AddCoupon.css";

function AddCoupon(props) {
  const history = useHistory();
  const { addToast } = useToasts();

  const [code, setCode] = useState(undefined);
  const [discount, setDiscount] = useState(undefined);
  const [expireDate, setExpireDate] = useState(new Date());
  const [error, setError] = useState("");



  const validation =()=>{
    if(!code) setError("Coupon Code is required")
    else if(!discount) setError("Coupon Discount is required")
    else if (discount> 90) setError("Discount must be less than 90%")
    else return true
  }

  const add = (e) => {
    e.preventDefault();
    setError("");

    if(validation()){
      const coupon = {
        "code" : code,
        "discount" : discount,
        "expireDate" : expireDate.getTime()
      }
      props.addCoupon( coupon)
        .then( res=> {
          addToast("Coupon was added successfully", { appearance: 'success', autoDismiss: true, })
          console.log(res);
        })
        .catch( e => {
          addToast("Error", { appearance: 'error', autoDismiss: true, })
          console.log(e);
        })
    }
  };


  return (
    <div className="AddCoupon">
      <div className="AddCoupon_container">
        <h1>Add coupon</h1>

        <form>
          <h5>Coupon Code</h5>
          <input
            type="text"
            value={code}
            onChange={(e) => setCode(e.target.value)}
          />

          <h5>Discount</h5>
          <input
            type="number"
            min="1"
            max="100"
            value={discount}
            onChange={(a) => setDiscount(a.target.value)}
          />

          <h5>Expire Date</h5>
            <DatePicker selected={expireDate} onChange={date => setExpireDate(date)} />
          <h6>{error}</h6>
          
          
          <button
            type="submit"
            onClick={add}
            className="AddCoupon_button"
          >
            Add
          </button>
        </form>
      </div>
    </div>
  );
}

export default connect(null, { addCoupon })(AddCoupon);
