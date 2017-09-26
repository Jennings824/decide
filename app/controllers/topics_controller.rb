class TopicsController <ApplicationController

  # def index
  #   @topics = Topic.all
  # end

  def show
  @topic = Topic.find(params[:id])
  @attendees = @topic.users
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new
    @topic = Topic.create(topic_params)
    if @topic.save
      redirect_to @topic, notice: "Topic added successfully"
    else
      flash[:alert] = @topic.errors.full_messages.join(',')
      render :new
    end
  end

  def topic_params
    params.require(:topic).permit(:title, :criteria)
  end
end
