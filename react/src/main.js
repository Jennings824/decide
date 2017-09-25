import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import App from './containers/App';

$(function() {
  ReactDOM.render(
    <h1>boo ya</h1>,
    document.getElementById('app')
  );
});
