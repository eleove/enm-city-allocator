const City = (props) => {
	return (
		<tr>
			<td> {props.name} </td>
			<td> {props.nb_seats} </td>
		</tr>
	);
};

export default City;
