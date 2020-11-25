import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import Typography from "@material-ui/core/Typography";
import Button from "@material-ui/core/Button";
import IconButton from "@material-ui/core/IconButton";
import LibraryBooksIcon from '@material-ui/icons/LibraryBooks';
import MenuIcon from "@material-ui/icons/Menu";
import ShoppingCartIcon from "@material-ui/icons/ShoppingCart";
import NotificationsIcon from '@material-ui/icons/Notifications';
import Badge from "@material-ui/core/Badge";
import { connect } from "react-redux";
import { Link } from "react-router-dom";

import { logOut} from "../redux/actions/AuthActions"

import { useHistory } from "react-router-dom";

import "./Nav.css"

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1,
  },
  menuButton: {
    marginRight: theme.spacing(2),
  },
  title: {
    flexGrow: 1,
    textDecoration: 'none'
  },
}));

function Nav(props) {
  const history = useHistory();
  const { addedIds, auth, logOut } = props;

  const classes = useStyles();

  const cart = () => {
    history.push("/Cart");
  };

  const notification = () => {
    history.push("/Notification");
  };

  const log = () => {
    history.push("/Log");
  };

  const SignIn = () => {
    history.push("/SignIn");
  };

  const SignOut = () => {
    logOut();
    history.push("/");
  }

  return (
    <div className={classes.root}>
      <AppBar boxShadow={0} style={{backgroundColor: '#20232A', boxShadow: 'none'}} position ='relative'>
        <Toolbar>
          <Link to="/" className={classes.title}>
           <h2 className="nav_title" >
           BOOK SHOP
           </h2>
          </Link>

          {
           (auth.isAuthenticated && auth.user.roles.includes("ROLE_ADMIN")) &&
            <>
              <IconButton
              onClick={log}
              edge="start"
              className={classes.menuButton}
              color="inherit"
              aria-label="menu"
              >
                <Badge badgeContent={0} color="error">
                  <LibraryBooksIcon />
                </Badge>
              </IconButton>

              <IconButton
              onClick={notification}
              edge="start"
              className={classes.menuButton}
              color="inherit"
              aria-label="menu"
              >
                <Badge badgeContent={auth.notifications.length} color="error">
                  <NotificationsIcon />
                </Badge>
              </IconButton>
            </>

          }
          
          {
            (!auth.isAuthenticated || (auth.isAuthenticated && auth.user.roles.includes("ROLE_USER"))) &&

            <IconButton
              onClick={cart}
              edge="start"
              className={classes.menuButton}
              color="inherit"
              aria-label="menu"
            >

          
              <Badge badgeContent={addedIds.length} color="error">
                <ShoppingCartIcon />
              </Badge>
            </IconButton>

          }
          

          {!auth.isAuthenticated && <Button onClick={SignIn} color="inherit">Login</Button>}
          {auth.isAuthenticated &&  
            <div className="nav_username">
              <h6>Welcome</h6>
              <h3> { auth.user.username}</h3>

            </div>
            
          
          }
          {auth.isAuthenticated && <Button onClick={SignOut} color="inherit">Log Out</Button>}

        </Toolbar>
      </AppBar>
    </div>
  );
}

const mapStateToProps = (state) => ({
  addedIds: state.cart.addedIds,
  auth: state.auth,

});

export default connect(mapStateToProps, { logOut})(Nav);
