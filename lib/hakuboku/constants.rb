# frozen_string_literal: true

module Hakuboku
  module Constants
    COLOR_MAPPING = {
      black: 30,
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34,
      magenta: 35,
      cyan: 36,
      white: 37,
      bright_black: 90,
      bright_red: 91,
      bright_green: 92,
      bright_yellow: 93,
      bright_blue: 94,
      bright_magenta: 95,
      bright_yan: 96,
      bright_white: 97
    }.freeze

    BG_COLOR_MAPPING = {
      bg_black: 40,
      bg_red: 41,
      bg_green: 42,
      bg_yellow: 43,
      bg_blue: 44,
      bg_magenta: 45,
      bg_cyan: 46,
      bg_white: 47,
      bg_bright_black: 100,
      bg_bright_red: 101,
      bg_bright_green: 102,
      bg_bright_yellow: 103,
      bg_bright_blue: 104,
      bg_bright_magenta: 105,
      bg_bright_yan: 106,
      bg_bright_white: 107
    }.freeze

    STYLE_MAPPING = {
      bold: 1,
      dim: 2,
      italic: 3,
      underline: 4,
      inverse: 7,
      strikethrough: 9,
      overline: 53
    }.freeze

    COLOR_AND_STYLE_MAPPING = COLOR_MAPPING.merge(BG_COLOR_MAPPING, STYLE_MAPPING)
  end
end
