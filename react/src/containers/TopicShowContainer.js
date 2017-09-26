import React, {Component} from 'react';
import TopicComponent from '../components/TopicComponent';

class TopicShowContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      // topic: {},
      // reviews: [],
      // rating: null,
      // currentUser: null
    }
    // this.addReview = this.addReview.bind(this)
  }



  // addReview(formPayload) {
  //   let path = location.pathname
  //   fetch(`/api/v1/${path}/reviews`, {
  //     credentials: 'same-origin',
  //     method: 'POST',
  //     body: JSON.stringify(formPayload)
  //   })
  //   this.aggregateReview()
  // }
  //
  // componentDidMount(){
  //   let path = location.pathname
  //   fetch(`/api/v1/${path}/`, {
  //     credentials: 'same-origin'
  //   })
  //   .then(response => {
  //     if (response.ok) {
  //       return response.json();
  //     } else {
  //       let errorMessage = `${response.status} ${response.statusText}`,
  //           error = new Error(errorMessage);
  //       throw(error);
  //     }
  //   })
  //   .then(body => {
  //     this.setState({
  //       brewpub: body[0],
  //       reviews: body[1],
  //       rating: body[2],
  //       currentUser: body[3]
  //     })
  //   })
  //   .catch(error => console.error(`Error in fetch: ${error.message}`));
  // }
  //
  // render() {
  //
  //
  //   let reviewComponents = this.state.reviews.map((review) => {
  //     return (
  //       <ReviewComponent
  //         key = {review.id}
  //         id = {review.id}
  //         rating = {review.rating}
  //         header = {review.header}
  //         body = {review.body}
  //         aggregateReview = {this.aggregateReview}
  //         currentUser = {this.state.currentUser}
  //         userId = {review.user_id}
  //       />
  //     )
  //   })

    return(
      <div>
      //   <BrewpubComponent
      //     key = {this.state.brewpub.id}
      //     id = {this.state.brewpub.id}
      //     name = {this.state.brewpub.name}
      //     address  = {this.state.brewpub.address}
      //   />
      //   {deleteButton}
      //   <hr />
      //   <div className="rating">
      //     BrewReview Score: {this.state.rating}
      //   </div>
      //   <hr />
      //   <h1>Reviews</h1>
      //   {reviewComponents}
      //   <hr />
      //   <div className="review-form">
      //     <ReviewForm brewpubId={this.state.brewpub.id} submitFunction={this.addReview}/>
      //   </div>
      </div>
    )
  }
}

export default TopicShowContainer;
