import React from 'react'
import { Link,useNavigate  } from 'react-router-dom'
import { useState } from "react";
import axios from "axios";

const Register = () => {

  //tab3ath l data ll auth.js
  const [inputs, setInputs] = useState({
    username: "",
    email: "",
    password: "",
  });

  const [err, setError] = useState(null);
  const navigate = useNavigate();

  
//kana l user ybadel l input
  const handleChange = (e) => {
    //learned this from a yt tutorial named tricks about usestate
    setInputs((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  };

//for the submit buutton 
//first add axios
  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      await axios.post("/auth/register", inputs);
      navigate("/login");
      
    } catch (err) {
      setError(err.response.data)
    }
  
  };

  return (
    <div className="auth">

    <h1>register</h1>
    <form>
      <input required type="text" placeholder='Username' name='username' onChange={handleChange}/>
      <input
          required type="email" placeholder="Email" name="email"  onChange={handleChange}/>
      <input required 
      type="Password" placeholder='password' name='password' onChange={handleChange} />
      <button onClick={handleSubmit}>register</button>
      {err && <p>{err}</p>}
      <span>
          Do you have an account? <Link to="/login">login now </Link>
        </span>
    </form>
    </div>
  )
}

export default Register