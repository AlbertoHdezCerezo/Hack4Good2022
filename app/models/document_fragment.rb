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

    # Define how to map Document Fragment +content+ to its tag
    # markdown representation via string interpolation.
    #
    # (Example for H1) "#%{content}"
    def markdown_representation
      raise "DocumentFragment class #{name} does not define markdown_representation method.
             Make sure to define a method that specifies how fragment content will be mapped
             to its respective Markdown representation"
    end
  end

  # Associations
  belongs_to :document, optional: false

  # Validations
  validates :position, numericality: { only_integer: true, greater_than: 0 }

  delegate :tag, :markdown_representation, to: :class

  # Interpolates content in the fragment markdown representation
  def to_md
    format(markdown_representation, content:)
  end

  def to_html
    MarkdownParser.parse(to_md)
  end
end
