require 'rails_helper'

RSpec.describe Project, type: :model do
  it_behaves_like "commentable"

  subject { create(:project) }
  it { should validate_presence_of(:name) }
end
