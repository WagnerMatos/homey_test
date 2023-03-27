# frozen_string_literal: true

require "rails_helper"

RSpec.describe "/projects", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      create(:project)
      get projects_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      project = create(:project)
      get project_url(project)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_project_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      project = create(:project)
      get edit_project_url(project)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Project" do
        params = {
          name: "Test Project"
        }
        expect {
          post projects_url, params: {project: params}
        }.to change(Project, :count).by(1)
      end

      it "redirects to the created project" do
        params = {
          name: "Test Project"
        }
        post projects_url, params: {project: params}
        expect(response).to redirect_to(project_url(Project.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Project" do
        expect {
          post projects_url, params: {project: {name: nil}}
        }.to change(Project, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post projects_url, params: {project: {name: nil}}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      it "updates the requested project" do
        project = create(:project)
        patch project_url(project), params: {project: {name: "New Name"}}
        project.reload
        expect(project.name).to eq("New Name")
      end

      it "redirects to the project" do
        project = create(:project)
        patch project_url(project), params: {project: {name: "New Name"}}
        project.reload
        expect(response).to redirect_to(project_url(project))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        project = create(:project)
        patch project_url(project), params: {project: {name: nil}}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested project" do
      project = create(:project)
      expect {
        delete project_url(project)
      }.to change(Project, :count).by(-1)
    end

    it "redirects to the projects list" do
      project = create(:project)
      delete project_url(project)
      expect(response).to redirect_to(projects_url)
    end
  end
end
