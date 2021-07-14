//import logo from './logo.svg';
import React, { Component } from 'react';
import City from './city.jsx'
import CityList from './city_list';
import LogInForm from './log_in_form';
import './App.css';

const fetchDataTests = () => {
  fetch('/api/v1/tests')
  .then(res => res.json())
  .then((response) => { console.log("Test data response", response); })
  .catch((error) => { console.log("Error while fetching data tests", error); })
}

// <button onClick={fetchDataTests}> Fetch data tests </button>

// TO DO
// extract the logic to put it into controllers/models
// add Student.name in the h2 when connected - otw, display connexion form
// populate City & Seats columns

class App extends Component {
	render() {
		return (
			<div className="App">
			<h1> ENM CITY ALLOCATOR</h1>
        <div className="top"> <h2> Welcome! </h2>	</div>
        <LogInForm />
        <div className="bottom"> <CityList />	</div>
			</div>
			)
	}
}

export default App;
