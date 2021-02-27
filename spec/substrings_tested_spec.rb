require 'spec_helper'
require_relative "../substrings_tested.rb"

RSpec.describe "Sub Strings Exercise" do
  describe 'Argument Requirements' do
    it 'returns an error if no arguments are given' do
      expect {substrings()}.to raise_error(ArgumentError)
    end
    it 'returns an error if only one argument is given' do
      expect {substrings('Hello World!')}.to raise_error(ArgumentError)
    end
  end

  describe 'matches exact phrase to word_list' do
    it 'returns an empty hash with no match' do
      expect(substrings('a', ['b'])).to eq({})
    end
    it 'returns a correct hash on match' do
      expect(substrings('a', ['a'])).to eq({"a"=>1})
    end
  end

  describe 'matches single character sub strings' do
    it 'returns a proper count with two matches' do
      expect(substrings('aa', ['a'])).to eq({'a'=>2})
    end
  end
  
  describe 'matches multiple words to substrings' do
    it 'returns more than one match' do
      expect(substrings('aa', ['a', 'aa'])).to eq({'a'=>2, 'aa'=>1})
    end
    xit 'returns correctly with multiple kinds of matches' do
      phrase = 'abaca'
      word_list = ['a', 'ba', 'd']
      expectation = {'a'=>3, 'ba'=>1}
      expect(substrings(phrase, word_list)).to eq(expectation)
    end
  end
  
end

