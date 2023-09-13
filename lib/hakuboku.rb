# frozen_string_literal: true

require_relative 'hakuboku/string'
require_relative 'hakuboku/constants'
require_relative 'hakuboku/version'

module Hakuboku
  class << self
    include Constants

    COLOR_AND_STYLE_MAPPING.each_key do |color|
      define_method(color) do |text|
        Hakuboku::String.new(text).send(color)
      end
    end

    def colors
      COLOR_MAPPING.keys
    end

    def bg_colors
      BG_COLOR_MAPPING.keys
    end

    def styles
      STYLE_MAPPING.keys
    end
  end
end
