import React from 'react';
import { Link } from 'react-router';

const TopicIndexComponent = (props) => {
  return (
    <div className="TopicIndexComponent">
      <div className="col">
      <a href={"/topics/"+props.id}>{props.title}</a>
      </div>
    </div>
  )
}

export default TopicIndexComponent;
