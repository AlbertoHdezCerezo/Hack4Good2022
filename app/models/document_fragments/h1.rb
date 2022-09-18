# frozen_string_literal: true

module DocumentFragments
  class H1 < DocumentFragment
    class << self
      def markdown_representation
        "# %{content}"
      end
    end
  end
end
