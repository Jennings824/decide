import React from 'react';
import { Link } from 'react-router';

const TopicIndexComponent = (props) => {
  return (
    <div className="TopicIndexComponent">
      <h3>{props.title}</h3>
      <h3>{props.criteria}</h3>
    </div>
  )
}

export default TopicIndexComponent;
