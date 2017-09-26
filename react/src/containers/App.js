import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import { browserHistory, Route, Router } from 'react-router';
import TopicIndexContainer from './TopicIndexContainer';

const App = (props) => {
  return(
    <Router history ={browserHistory}>
        <Route  path="/topics" component={TopicIndexContainer}/>
        <Route exact path="/topics/:id" />
   </Router>
 );
}

export default App;
