# frozen_string_literal: true

RSpec.describe "creating a project" do
  context "with valid details" do
    it "creates the candidate" do
      user = create(:user)
      project = create(:project)
      sign_in user
      visit project_path(project)

      fill_in "project_comments_attributes_0_body", with: "This is a new comment"
      click_on "Add comment"

      expect(page).to have_text("Project was successfully updated.")
      expect(page).to have_text("This is a new comment")
    end
  end
end
