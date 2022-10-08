import React, {useState} from "react";
import TodoList from "./component/TodoList";

const App=()=> {

  const [inputList,setInputList] = useState("");
  const [Items , setItems]= useState([]);

  const itemEvent=(event)=>{
    setInputList(event.target.value);
  };

  const listofItems=()=>{
    setItems((oldItems)=>{
        return [...oldItems, inputList];
    });
    setInputList("");
  };

  
  const deleteItems=(id)=>{
    console.log("deleted");
    setItems((oldItems)=>{
      return oldItems.filter((arrElem,index)=>{
        return index !== id;
      });
  });
 }
    

 return(
 <>
    <div className="main-div">
      <div className="center-div">
        <br />
        <h1> ToDo List</h1>
        <br />
        <input type="text" placeholder="Add a Items" 
        value={inputList} onChange={itemEvent}/> 
        <button onClick={listofItems}>+</button>

        <ol>
          {/* <li> {inputList} </li> */}
          {Items.map((itemval , index)=>{
            return <TodoList 
            key={index} 
            id={index} 
            text={itemval}
            onSelect={deleteItems}
            />;
          })}
        </ol>
      </div>
    </div>
 </>
 )
}

export default App;
