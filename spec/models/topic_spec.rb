require 'rails_helper'

RSpec.describe Topic, type: :model do
  it { should have_valid(:title).when('Yards', '2nd Story')}
  it { should_not have_valid(:title).when(nil, '', )}
  it { should have_valid(:criteria).when('123 test street', 'First street')}
  it { should_not have_valid(:criteria).when(nil, '', )}
end
