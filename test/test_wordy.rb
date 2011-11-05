require 'minitest/autorun'
require 'wordy'

class TestWordy < MiniTest::Unit::TestCase

  def test_has_version
    assert_equal String, Wordy::VERSION.class
  end

  def test_has_words
    assert_equal Array, Wordy::WORDS.class
  end

  def test_single_word_has_no_spaces
    refute_match /\s/, Wordy.word
  end
  
  def test_single_word_is_string
    assert_equal String, Wordy.word.class
  end
  
  def test_single_word_is_not_blank
    assert 1 < Wordy.word.length
  end
  
  def test_words
    assert_equal Array, Wordy.words.class
  end
  
  def test_words_contain_strings
    assert_equal String, Wordy.words.first.class
  end

  def test_sentence
    assert_match /^[A-Z].*\.$/, Wordy.sentence
  end
  
  def test_sentence_has_length
    assert 5 < Wordy.sentence.length
  end

  def test_sentences
    assert_equal Array, Wordy.sentences.class
  end

  def test_sentences_contain_strings
    assert_equal String, Wordy.sentences.first.class
  end
  
  def test_paragraph
    assert_match /^([A-Z][a-z\s]+\.\s?){2,}$/, Wordy.paragraph
  end
  
  def test_paragraphs
    assert_equal Array, Wordy.paragraphs.class
  end
  
  def test_paragraphs_contain_strings
    assert_equal String, Wordy.paragraphs.first.class
  end
  
  def test_body
    assert_match /^([A-Z][a-z\s]+\.\s?){2,}$/, Wordy.body
  end
  
end
