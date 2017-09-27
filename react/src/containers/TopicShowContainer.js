import React, {Component} from 'react';
import TopicIndexComponent from '../components/TopicIndexComponent';
import TopicShowComponent from '../components/TopicShowComponent';

class TopicShowContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      topic: {}
    }
  }

  componentDidMount(){
    fetch(`/api/v1/topics/${this.props.params.id}`, {
      credentials: 'same-origin'
    })
    .then(response => {
      if (response.ok) {
        return response.json();
      } else {
        let errorMessage = `${response.status} ${response.statusText}`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(body => {
      this.setState({
        topic: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {


    return(
      <div>
        <TopicShowComponent
          key = {this.state.topic.id}
          id = {this.state.topic.id}
          title = {this.state.topic.title}
          criteria  = {this.state.topic.criteria}
        />


        <hr />
        <div className="opinion-form">
        </div>
      </div>
    )
  }
}

export default TopicShowContainer;
