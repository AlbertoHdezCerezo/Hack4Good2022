# frozen_string_literal: true

# Base project component class
class SampleComponent < ApplicationComponent
  def call
    tag.div(**wrapper_attributes) do
      tag.h1("Hey There!")
    end
  end
end
