import React from 'react';
import TopicComponent from '../components/TopicComponent'
import { Link } from 'react-router';

class TopicIndexContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      topics: []
    }
    this.refreshPage = this.refreshPage.bind(this)
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
  refreshPage() {
     window.location.reload()
   }

  render() {

    let topicComponents = this.state.topics.map((topic) => {
  return (
      <Link to={`/topics/${topic.id}`} key={topic.id} onClick={this.refreshPage}>
        <TopicComponent
          key = {topic.id}
          id = {topic.id}
          title = {topic.title}
          criteria = {topic.criteria}
          />
      </Link>
  )
})

    return (
      <div className="TopicIndexContainer">
        <div className= "tile">
        <h1>Topics you should Join!</h1>
          {topicComponents}
        </div>
      </div>
    );
  }
}

export default TopicIndexContainer;
