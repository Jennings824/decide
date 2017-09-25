import React from 'react';

class ShowContainer extends React.Component {
  constructor(props) {
    super(props);
  }

  // compnentDidMount()
  // fetch('')
  // .then(response => {
  //   if (response.ok) {
  //     return response;
  //   } else {
  //     let errorMessage = `({response.status} {response.statusText})`,
  //         error = new Error(errorMessage);
  //     throw(error);
  //   }
  // })
  // .then(response => )
  // .catch(error => console.error(`Error in fetch: ${error.message}`));
  //


  render() {

    return (
      <div className="ShowContainer">
      I am a React class!
      </div>
    );
  }
}

export default ShowContainer;
