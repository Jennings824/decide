import React from 'react';
import TopicIndexComponent from '../components/TopicIndexComponent'
import { Link } from 'react-router';

class TopicIndexContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      topics: []
    }

  }

  componentDidMount(){
    fetch('/api/v1/topics/')
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
        topics: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {

    let topicComponents = this.state.topics.map((topic) => {
  return (
        <TopicIndexComponent
          key = {topic.id}
          id = {topic.id}
          title = {topic.title}
          criteria = {topic.criteria}
          />
  )
})

    return (
      <div className="container">
        <div className= "row">
          <div className="col-sm-12 text-center">
            <h1>Topics You Should Join!</h1>
          </div>
        </div>
        <div className="row">
          {topicComponents}
        </div>
      </div>
    );
  }
}

export default TopicIndexContainer;
