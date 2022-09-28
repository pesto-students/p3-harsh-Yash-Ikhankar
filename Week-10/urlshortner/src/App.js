import './App.css';
import Navbar from './component/navbar';
import InputShortner from './InputShortner';
import Result from './Result';
import { useState } from 'react'
import Footer from './component/footer';
function App() {

  const [inputValue,setInputValue]= useState("");
  return (
    
    <div className="container">
    <Navbar/>
    <InputShortner setInputValue={setInputValue}/>
    <Result inputValue={inputValue}/>
    <Footer/>
    </div>
  );
}

export default App;
