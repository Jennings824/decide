require 'rails_helper'

RSpec.describe Opinion, type: :model do
  it { should have_valid(:user_topic_id).when(1, 5)}
  it { should_not have_valid(:user_topic_id).when(nil, '')}
  it { should have_valid(:info).when('Yes it was great', 'fantastic')}
  it { should_not have_valid(:info).when(nil, '')}
end
