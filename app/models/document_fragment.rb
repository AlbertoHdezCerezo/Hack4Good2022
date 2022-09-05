class DocumentFragment < ApplicationRecord
  include StiPreload

  class << self
    def sti_descendants
      %w(DocumentFragments::H1 DocumentFragments::P)
    end

    # Fragment Markdown Tag
    def tag
      name
    end
  end

  # Associations
  belongs_to :document, optional: false

  # Validations
  validates :position, numericality: { only_integer: true, greater_than: 0 }

  delegate :tag, to: :class
end
