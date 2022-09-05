# frozen_string_literal: true

class Document < ApplicationRecord
  # Associations
  has_many :document_fragments, dependent: :delete_all

  # Enums
  enum :status, { idea: 0, draft: 10, waiting_for_review: 20, waiting_for_publication: 30, published: 40 }

  # Validations
  validates :name, presence: true
  validates :status, presence: true
end
