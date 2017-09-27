class Api::V1::OpinionsController < ApplicationController

  def create
    data = JSON.parse(request.body.read)

    if current_user
      new_opinion = Opinion.create(
        user_topic_id: data["user_topic_id"],
        info: data["info"]
        )
    else
      render json: nil
    end

    if new_opinion.save
      render json: new_opinion
    end
  end


end
