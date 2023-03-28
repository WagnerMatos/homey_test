# frozen_string_literal: true

RSpec.shared_examples "commentable" do
  describe "associations" do
    it { should have_many(:comments) }
  end
end
