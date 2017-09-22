class UserTopicsController <ApplicationController

  def create
    # UserTopic.create(user_id: current_user.id, topic_id: (params[:id]))
    @topic = Topic.find(params[:topic_id])
    @user_topic = @topic.user_topics.where(user_id: current_user.id).first_or_create
    redirect_to @topic
  end

end
