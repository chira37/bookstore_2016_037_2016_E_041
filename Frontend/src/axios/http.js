import axios from "axios";

export const authHeader = () => {
  const user = JSON.parse(localStorage.getItem("user"));
  console.log(user.accessToken)

  if (user && user.accessToken) {
    return {
      
      "Authorization":  `Bearer ${user.accessToken}`,
    };
  } else {
    return {};
  }
};


export const header = () => {
  return {
    "Authorization":  "dsfsfsdfs",
    "Content-type": "application/json",
    "Access-Control-Allow-Origin": "*",
  };
};

export const uploadHeader = () => {
  const user = JSON.parse(localStorage.getItem("user"));
  console.log(user.accessToken)

  if (user && user.accessToken) {
    return {
      
      "Authorization":  `Bearer ${user.accessToken}`,
      "Content-Type": "multipart/form-data",
    };
    
  } else {
    return {};
  }
};
