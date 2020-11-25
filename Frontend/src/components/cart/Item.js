import React from 'react'
import './Item.css';
import Button from '@material-ui/core/Button';
import { removeFromCart } from '../../redux/actions/ProductActions';
import { connect } from 'react-redux'


function Item(props) {

    const {data, removeFromCart, total} = props

    const {id, name, fileData} = data

    const remove = () => {
        removeFromCart(id)
    }


    return (
        <div className="item">
            <img className='item_img'
                 src={`data:image/png;base64,${fileData}`}
            >
            </img>
            <div className="item_details">
                <h5 className="item_title">{name}</h5>
                <h5 className="item_text">1 * 25$ = 25$</h5>
            </div>
            <div>
                <Button onClick={remove}> remove</Button>
            </div>
        </div>
    )
}


const mapStateToProps = (state) => {
  
    return {
      products : state.product.products
    };
};
  
export default connect(mapStateToProps, { removeFromCart })(Item);
