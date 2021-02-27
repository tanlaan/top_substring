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
    it 'returns correctly with multiple kinds of matches' do
      phrase = 'abaca'
      word_list = ['a', 'ba', 'd']
      expectation = {'a'=>3, 'ba'=>1}
      expect(substrings(phrase, word_list)).to eq(expectation)
    end
  end

  describe 'Case insensitive' do
    it 'matches even if phrase is all capital' do
      expect(substrings('A', ['a'])).to eq({'a'=>1})
    end
    it 'matches variable case phrases' do
      phrase = 'ABaCa'
      word_list = ['a', 'ba', 'd']
      expectation = {'a'=>3, 'ba'=>1}
      expect(substrings(phrase, word_list)).to eq(expectation)
    end
  end
  
  describe 'The Odin Project Example' do
    it 'matches a single word' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
    end
    it 'matches a phrase' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
    end
  end
  
end

