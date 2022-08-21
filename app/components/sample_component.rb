# frozen_string_literal: true

# Base project component class
class SampleComponent < ApplicationComponent
  def call

    tag.div(class: "p-[8px]") do
      tag.h1("Hey There!", class: "text-red-600")
    end
  end
end
