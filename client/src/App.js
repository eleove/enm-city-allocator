//import logo from './logo.svg';
import React from 'react';
import './App.css';

const fetchDataTests = () => {
  fetch('/api/v1/tests')
  .then(res => res.json())
  .then((response) => { console.log("Test data response", response); })
  .catch((error) => { console.log("Error while fetching data tests", error); })
}

// <button onClick={fetchDataTests}> Fetch data tests </button>

const App = () => {
  return (
    <div className="App">  
      <h1> ENM CITY ALLOCATOR </h1>
    </div>
  );
}

export default App;
