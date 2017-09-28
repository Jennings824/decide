require 'rails_helper'

RSpec.describe UserTopic, type: :model do
  it { should have_valid(:user_id).when(1, 5)}
  it { should_not have_valid(:user_id).when(nil, '')}
  it { should have_valid(:topic_id).when(1, 2)}
  it { should_not have_valid(:topic_id).when(nil, '')}
end
