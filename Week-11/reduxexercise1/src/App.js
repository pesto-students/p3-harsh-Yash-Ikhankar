import "./App.css";
import { useSelector, useDispatch } from 'react-redux';
import lightSwitch  from './Action/index';

function App() {
  const isLightOn = useSelector(state => state);
  const dispatch = useDispatch();
  const lightedness = isLightOn ? 'Light' : 'Dark';

	return (
		<div className={`room ${lightedness}`}>
      <h1>The room is {lightedness} </h1>
      <button onClick={()=> dispatch(lightSwitch())}>Flip</button>
		</div>
	);
}

export default App;

