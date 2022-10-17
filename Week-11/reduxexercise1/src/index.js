import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import {createStore} from 'redux';
import switchReducer from './Reducer/index';
import {Provider} from 'react-redux';


const store =createStore(switchReducer);
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(

    <Provider store={store}>
    <App />
    </Provider>
);

