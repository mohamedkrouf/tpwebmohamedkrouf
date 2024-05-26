//the reason for this is bch nest7a9o l user info f bardha blayes 
import { createContext, useEffect, useState } from "react";
import axios from "axios";
export const AuthContext = createContext();

export const AuthContexProvider = ({ children }) => {
    //cheking if there is a user in the local storage if there is rana bch nesta3mlouh
    const [currentUser, setCurrentUser] = useState(
      JSON.parse(localStorage.getItem("user")) || null
    );
    const login = async (inputs) => {
        const res = await axios.post("/auth/login", inputs);
        setCurrentUser(res.data);
      };

    
  const logout = async (inputs) => {
    await axios.post("/auth/logout");
    setCurrentUser(null);
  };
  //to update the local storage 
  useEffect(() => {
    localStorage.setItem("user", JSON.stringify(currentUser));
  }, [currentUser]);
  // returning this provide
  
  return (
    <AuthContext.Provider value={{ currentUser, login, logout }}>
      {children}
    </AuthContext.Provider>
  )
}   