require File.dirname(__FILE__) + '/../test_helper'

class SmileizeTest < Test::Unit::TestCase
  
  def test_return_no_smiles
    assert_equal "Foo", "Foo".smileize
    assert_equal "Help", "Help".smileize
    assert_equal "Depends;", "Depends;".smileize
  end
  
  def test_wink_tongue
    assert_smile :wink_tongue, ";p".smileize
    assert_smile :wink_tongue, ";-p".smileize
    assert_smile :wink_tongue, ";-P".smileize
  end
  
  def test_money
    assert_smile :money, "$)".smileize
    assert_smile :money, "$-)".smileize
  end
  
  def test_glasses
    assert_smile :glasses, "8)".smileize
    assert_smile :glasses, "8-)".smileize
  end
  
  def test_angry_surprise
    assert_smile :angry_surprise, ">:(".smileize
    assert_smile :angry_surprise, ">:-(".smileize
  end
  
  def test_lips
    assert_smile :lips, ":*".smileize
    assert_smile :lips, ":-*".smileize
  end
  
  def test_surprise
    assert_smile :surprise, ":o".smileize
    assert_smile :surprise, ":-o".smileize
    assert_smile :surprise, ":-O".smileize
  end
  
  def test_big_frown
    assert_smile :big_frown, ":c".smileize
    assert_smile :big_frown, ":-c".smileize
    assert_smile :big_frown, ":-C".smileize
  end
  
  def test_wink
    assert_smile :wink, ";)".smileize
    assert_smile :wink, ";-)".smileize
  end
  
  def test_confused
    assert_smile :confused, ":s".smileize
    assert_smile :confused, ":-s".smileize
    assert_smile :confused, ":-S".smileize
  end
  
  def test_plain
    assert_smile :plain, ":|".smileize
    assert_smile :plain, ":-|".smileize
  end
  
  def test_tongue
    assert_smile :tongue, ":p".smileize
    assert_smile :tongue, ":-p".smileize
    assert_smile :tongue, ":-P".smileize
  end
  
  def test_big_smile
    assert_smile :big_smile, ":D".smileize
    assert_smile :big_smile, ":-D".smileize
    assert_smile :big_smile, ":-d".smileize
  end
  
  def test_frown
    assert_smile :frown, ":(".smileize
    assert_smile :frown, ":-(".smileize
  end
  
  def test_smile
    assert_smile :smile, ":)".smileize
    assert_smile :smile, ":-)".smileize
  end
  
end