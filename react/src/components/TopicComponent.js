import React from 'react';
import { Link } from 'react-router';

const TopicComponent = (props) => {
  return (
    <div className="TopicComponent">
      <h3>{props.title}</h3>
    </div>
  )
}

export default TopicComponent;
