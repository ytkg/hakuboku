# frozen_string_literal: true

RSpec.describe Hakuboku::String do
  describe '#inspect' do
    subject { string.inspect }

    let(:string) { described_class.new('Hello, World!') }

    it { is_expected.to eq '"Hello, World!"' }
  end

  describe '#to_s' do
    subject { string.to_s }

    let(:string) { described_class.new('Hello, World!') }

    it { is_expected.to eq 'Hello, World!' }
  end

  describe '#red' do
    subject { string.red.to_s }

    let(:string) { described_class.new('Hello, World!') }

    it { is_expected.to eq "\e[31mHello, World!\e[0m" }
  end

  describe '#bg_green' do
    subject { string.bg_green.to_s }

    let(:string) { described_class.new('Hello, World!') }

    it { is_expected.to eq "\e[42mHello, World!\e[0m" }
  end

  describe '#bold' do
    subject { string.bold.to_s }

    let(:string) { described_class.new('Hello, World!') }

    it { is_expected.to eq "\e[1mHello, World!\e[0m" }
  end

  describe '#red, #bg_green and #bold' do
    subject { string.red.bg_green.bold.to_s }

    let(:string) { described_class.new('Hello, World!') }

    it { is_expected.to eq "\e[1m\e[42m\e[31mHello, World!\e[0m" }
  end
end
