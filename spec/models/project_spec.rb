require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { create(:project) }
  it { should validate_presence_of(:name) }
end
