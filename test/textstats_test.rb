require 'test_helper'

class TextstatsTest < Test::Unit::TestCase
  def setup
    @simple = "This is a test text."
    @apos = "It's meant for testing the github-textstats gem."
    @punct= "It contains commas, full stops, exclamation; marks and other (special) chars. 
             Does it? It really does: not!"
  end
  
  should "count words correctly" do
    assert_equal @simple.words.size, 5
    assert_equal @apos.words.size, 7 
  end
   
  should "count sentences correctly" do
    assert_equal @punct.sentences, 3 
  end
  
  should "count special chars correctly" do
    assert_equal @punct.puncts.size, 5 
  end
  
  should "compute type-token ratio correctly" do
    assert_equal @simple.type_token_ratio, 1
    assert_equal @apos.type_token_ratio, @apos.type_token_ratio(true)
    assert @punct.type_token_ratio > @punct.type_token_ratio(true)
  end
  
  should "count long words correctly" do
    assert_equal @punct.long_words(6).size, 5 
  end
  
end
