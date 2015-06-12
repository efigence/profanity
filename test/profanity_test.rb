require 'test_helper'

class ProfanityTest < Minitest::Test

  def test_check_single_word
    response = Profanity.check('ass')
    assert_equal true, response
  end

  def test_check_words_in_one_string
    response = Profanity.check('profanityass')
    assert_equal true, response
  end

  def test_check_no_profanity_words
    response = Profanity.check('Only beutiful words')
    assert_equal false, response
  end

  def test_check_profanity_text
    response = Profanity.check('There is one ass profanity word')
    assert_equal true, response
    response = Profanity.check('There-is-one-ass-profanity-word')
    assert_equal true, response
    response = Profanity.check('There$is$on$assass$profanity$word')
    assert_equal true, response
  end
end
