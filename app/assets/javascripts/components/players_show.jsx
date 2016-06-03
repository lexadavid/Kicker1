class PlayerShow

extends React.Component {
  render() {
    return (
      <div>
      <p> ID: {this.props.player.id} </p>
      <p> First Name: {this.props.player.first_name} </p>
      <p> Last Name: {this.props.player.last_name} </p>
      <p> Email: {this.props.player.email} </p>
      <p> Position: {this.props.player.position} </p>
      </div>
    );
  }
}