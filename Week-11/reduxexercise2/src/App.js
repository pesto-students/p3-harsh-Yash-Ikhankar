import React from 'react'
import './App.css'
import {useSelector , useDispatch} from "react-redux";
import {incNumber ,numReset} from "./actions/index"

const App = () => {
  const myState = useSelector((state)=> state.changeTheNumber);
  const dispatch = useDispatch();
  return (
    <>
    <div className='container'>
      <h2>You have walked {myState} steps today!</h2>
      <div className="Steps">
        <button className="addStep" onClick={()=> dispatch(incNumber())}>ADD Step</button>
        <button className="restSteps" onClick={()=>dispatch(numReset())}>Reset Steps</button>
      </div>
    </div>
    </>
  )
}

export default App