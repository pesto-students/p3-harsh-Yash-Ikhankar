import React from 'react'
import "./footer.css"
const Footer = () => {
  return (
    <div className='footer-container'>
      <div className="row">
        <div className="footer-col">
          <h4>Company</h4>
          <ul>
            <li><a href="#">About</a></li><br/>
            <li><a href="#">Our Team</a></li><br/>
            <li><a href="#">Careers</a></li><br/>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div className="footer-col">
          <h4>Resources</h4>
          <ul>
            <li><a href="#">Blog</a></li><br/>
            <li><a href="#">Developers</a></li><br/>
            <li><a href="#">Support</a></li>
          </ul>
        </div>
        <div className="footer-col">
          <h4>Features</h4>
          <ul>
            <li><a href="#">Link shortning</a></li><br/>
            <li><a href="#">Branded Links</a></li><br/>
            <li><a href="#">Analytics</a></li>
          </ul>
        </div>
        
      </div>
    </div>
    
    
  )
}

export default Footer