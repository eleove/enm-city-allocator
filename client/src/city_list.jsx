import { useEffect, useState } from "react";
import City from "./city.jsx";

const CityList = () => {
	const [data, setData] = useState([]);
	useEffect(async () => {
		fetch("/api/v1/cities") // add BACKEND_URL env variable?
			.then((res) => res.json())
			.then((data) => setData(data));
	}, []);

	return (
		<div className="city-list">
			<table className="city-table">
				<tr>
					<th>City</th>
					<th>Available seats</th>
				</tr>
				{data.map((city) => (
					<City name={city.name} nb_seats={city.nb_seats} />
				))}
			</table>
		</div>
	);
};

export default CityList;
