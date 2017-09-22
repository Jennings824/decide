class OpinionsController <ApplicationController
  def new
    @opinion = Opinion.new
    @topic = Topic.find(params[:topic_id])
    @user = current_user.id
    @user_topics = UserTopic.all
    @specific_user_topic_id = UserTopic.select{|user_topic| user_topic.user_id == current_user.id && user_topic.topic_id == @topic.id}
    @opinions = Opinion.all

  end

  def create
    @topic = Topic.find(params[:topic_id])
    @user = current_user.id
    @user_topics = UserTopic.all
    @specific_user_topic_id = UserTopic.select{|user_topic| user_topic.user_id == current_user.id && user_topic.topic_id == @topic.id}
    binding.pry
    @opinion = Opinion.create(opinion_params)
    @opinion.user_topic_id = @specific_user_topic_id[0].id
    if @opinion.save
      flash[:notice] = "Successfully created..."
        redirect_to @topic
    else
      flash[:notice] = "Not created"
    end
  end

  def show
    @opinions = Opinion.all
  end

private
  def opinion_params
    params.require(:opinion).permit(:info)
  end
end
