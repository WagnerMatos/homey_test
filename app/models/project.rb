# frozen_string_literal: true

class Project < ApplicationRecord
  include Commentable

  accepts_nested_attributes_for :comments

  has_paper_trail only: [:project_status]

  enum project_status: {
    active: 0,
    in_progress: 1,
    delayed: 2,
    delivered: 3
  }

  validates :name, presence: true
end
