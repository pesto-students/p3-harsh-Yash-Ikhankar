import React from 'react'
import "./navbar.css"
const Navbar = () => {
  return (
    <div className="nav_container">
      <h1 id='nav_logo'>URLshortner.com</h1>
      <nav>
         <ul className="nav_link">
           <li><a href="#" className="nav-option">Home</a></li>
           <li><a href="#" className="nav-option">Services</a></li>
           <li><a href="#" className="nav-option">Contact Us</a></li>
           <li><a href='#'className='nav_option'>About us</a></li>
         </ul>
       </nav>
       <a href="#" className="navbar_btn"><button>Sign Up</button></a>
    </div>
  );
}

export default Navbar
