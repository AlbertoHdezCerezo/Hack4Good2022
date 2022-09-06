# frozen_string_literal: true

class DocumentFragments::P < DocumentFragment
  class << self
    def markdown_representation
      "%{content}"
    end
  end
end
