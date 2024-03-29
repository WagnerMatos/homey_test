# frozen_string_literal: true

RSpec.describe Comment, type: :model do
  it { is_expected.to have_db_column(:commentable_id).of_type(:integer) }
  it { is_expected.to have_db_column(:commentable_type).of_type(:string) }

  describe "associations" do
    it { is_expected.to belong_to(:commentable) }
  end

  describe "validations" do
    it { should validate_presence_of(:body) }
  end
end
