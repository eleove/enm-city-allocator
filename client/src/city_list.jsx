import React, { Component } from 'react';
import './App.css';
import City from './city.jsx'

class CityList extends Component {
	render() {
		 return (
		 <div className="city-list">
			<table className="city-table">
			<tr>
			    <th>City</th>
			    <th>Available seats</th>
			 </tr>
			 	<City name="Lyon" nb_seats="4" />
			 	<City name="Paris" nb_seats="6" />
			 </table>
    </div>
	    )
	}
}

export default CityList;