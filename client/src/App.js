import CityList from "./city_list";
import "./App.css";

// TO DO
// controllers & models
// replace the App's 'name' props to the name of the current user. Otherwise, display connexion form.

const App = (props) => {
	return (
		<div className="App">
			<h1> ENM CITY ALLOCATOR</h1>
			<div className="top">
				<h2> Welcome {props.name}! </h2>
			</div>
			<div className="bottom">
				<CityList />
			</div>
		</div>
	);
};

export default App;
