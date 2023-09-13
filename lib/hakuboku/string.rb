# frozen_string_literal: true

require_relative 'constants'

module Hakuboku
  class String
    include Constants

    def initialize(text)
      raise TypeError, "no implicit conversion of #{text.class} into String" unless text.is_a?(::String)

      @text = text
      @decorators = []
    end

    def inspect
      "\"#{@text}\""
    end

    def to_s
      prefix = @decorators.reverse.map { |decorator| "\e[#{COLOR_AND_STYLE_MAPPING[decorator]}m" }.join
      suffix = prefix.empty? ? '' : "\e[0m"

      "#{prefix}#{@text}#{suffix}"
    end

    COLOR_AND_STYLE_MAPPING.each_key do |color|
      define_method(color) do
        @decorators.push(color)

        self
      end
    end
  end
end
