# frozen_string_literal: true

RSpec.shared_examples "a restricted route" do
  it "redirects to not authorised" do
    expect(subject).to redirect_to(new_user_session_path)
  end
end
