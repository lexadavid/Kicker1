class PlayerShow extends React.Component {

  cunstructor(props){
    super(props)
    this.state = {
      clicked: false
    }
  }

  _touchedMe(){
    var newState = {};
    newState["clicked"] = true;
    this.setState(newState);
  }

  render() {
    let open = <a className="clicker" onClick={this._touchedMe.bind(this)}>Display</a>;

    if(this.state.clicked){
      open = <div>
        <p> ID: {this.props.player.id} </p>
        <p> First Name: {this.props.player.first_name} </p>
        <p> Last Name: {this.props.player.last_name} </p>
        <p> Email: {this.props.player.email} </p>
        <p> Position: {this.props.player.position} </p>
      </div>;
    }

      return (
        <div>
          {open}
        </div>
    )
  }
}