import { useState } from 'react'

const InputShortner = ({setInputValue}) => {
  const [value,setValue]=useState("");
  const handleClick=()=>{
    setInputValue(value);
    setValue("");
  }

  return (
    <div className="inputContainer">
      <h1>URL <span>Shortner</span></h1>
      <div>
      <input 
      type="text" 
      placeholder="Enter URL" 
      value={value}
      onChange={e =>setValue(e.target.value)}
      />
      <button onClick={handleClick}>SHORTEN</button>
      </div>
    </div>   
   
  )
}

export default InputShortner