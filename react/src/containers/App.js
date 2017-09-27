import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import { browserHistory, Route, Router } from 'react-router';
import TopicIndexContainer from './TopicIndexContainer';
import TopicShowContainer from './TopicShowContainer';

const App = (props) => {
  return(
    <Router history ={browserHistory}>
        <Route exact path="/topics" component={TopicIndexContainer}/>
        <Route exact path="/topics/:id" component={TopicShowContainer}/>
   </Router>
 );
}

export default App;
