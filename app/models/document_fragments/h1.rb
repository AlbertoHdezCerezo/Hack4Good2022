# frozen_string_literal: true

class DocumentFragments::H1 < DocumentFragment
  class << self
    def markdown_representation
      "# %{content}"
    end
  end
end
