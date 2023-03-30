# frozen_string_literal: true

RSpec.describe "creating a project" do
  context "with valid details" do
    it "creates the candidate" do
      user = create(:user)
      sign_in user
      visit projects_path

      click_on "New project"

      expect(page).to have_text("New project")
      select "Active", from: "project_experience_level"
      fill_in "Name", with: "Project Name"
      click_on "Create Project"

      expect(page).to have_text "Project was successfully created."
    end
  end
end
