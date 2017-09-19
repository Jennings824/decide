// import React, {Component} from 'react';
// import {Link} from 'react-router-dom';
//
// class IndexContainer extends Component {
//   constructor(props){
//     super(props);
//     this.state = {
//       topics: []
//     }
//   }
//
//   componentDidMount(){
//     fectch('/api/v1/topics/')
//     .then(body => {
//       this.setState({
//         topics: body
//       })
//     })
//   }
//
//   render() {
//     let topicComponents = this.state.topics.map((topic) => {
//       return (
//         <Link to={`/topics/${topic.id}`} key={topic.id}>
//         <TopicComponent
//           key = {topic.id}
//           id = {topic.id}
//           title = {topic.title}
//           criteria = {topic.criteria}
//         />
//         </Link>
//       )
//     })
//
//     return(
//       <div>
//         <h1>Topics</h1>
//         {topicComponents}
//         </div>
//     )
//
//   }
// }
//
// export default IndexContainer;
