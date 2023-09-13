# frozen_string_literal: true

RSpec.describe Hakuboku do
  it 'has a version number' do
    expect(Hakuboku::VERSION).not_to be nil
  end

  describe '.red' do
    subject { described_class.red('Hello, World!') }

    it { expect(subject.class).to eq Hakuboku::String }
    it { expect(subject.to_s).to eq "\e[31mHello, World!\e[0m" }
  end

  describe '.bg_green' do
    subject { described_class.bg_green('Hello, World!') }

    it { expect(subject.class).to eq Hakuboku::String }
    it { expect(subject.to_s).to eq "\e[42mHello, World!\e[0m" }
  end

  describe '.colors' do
    subject { described_class.colors }

    it do
      expect(subject).to include(
        :black,
        :red,
        :green,
        :yellow,
        :blue,
        :magenta,
        :cyan,
        :white,
        :bright_black,
        :bright_red,
        :bright_green,
        :bright_yellow,
        :bright_blue,
        :bright_magenta,
        :bright_yan,
        :bright_white
      )
    end
  end

  describe '.bg_colors' do
    subject { described_class.bg_colors }

    it do
      expect(subject).to include(
        :bg_black,
        :bg_red,
        :bg_green,
        :bg_yellow,
        :bg_blue,
        :bg_magenta,
        :bg_cyan,
        :bg_white,
        :bg_bright_black,
        :bg_bright_red,
        :bg_bright_green,
        :bg_bright_yellow,
        :bg_bright_blue,
        :bg_bright_magenta,
        :bg_bright_yan,
        :bg_bright_white
      )
    end
  end

  describe '.styles' do
    subject { described_class.styles }

    it do
      expect(subject).to include(
        :bold,
        :dim,
        :italic,
        :underline,
        :inverse,
        :strikethrough,
        :overline
      )
    end
  end
end
