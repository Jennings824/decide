import React from 'react';
import { Link } from 'react-router';

const TopicIndexComponent = (props) => {
  return (
    <div className="TopicIndexComponent">
      <div className="col">
      <div className="grow">
      <a href={"/topics/"+props.id}>{props.title}</a>
      </div>
      </div>
    </div>
  )
}

export default TopicIndexComponent;
