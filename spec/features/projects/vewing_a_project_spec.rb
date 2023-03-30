# frozen_string_literal: true

RSpec.describe "creating a project" do
  context "with valid details" do
    it "creates the candidate" do
      user = create(:user)
      project = create(:project)
      sign_in user
      visit project_path(project)

      expect(page).to have_text(project.name)
    end
  end
end
