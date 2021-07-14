import React, { Component } from 'react';
import './App.css';

class City extends Component {
	render() {
		return (
			<tr>
			 	<td> {this.props.name} </td>
			 	<td> {this.props.nb_seats} </td>
			 </tr>
		 )
	}
}

export default City;	