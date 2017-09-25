class TopicsController <ApplicationController

  def show
  @topic = Topic.find(params[:id])
  @attendees = @topic.users
  end

end
