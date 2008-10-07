require 'test/unit'
require 'rubygems'
require 'redgreen'

$: << File.join(File.dirname(__FILE__), '..', 'lib')
require 'smileize.rb'

class Test::Unit::TestCase
  def assert_smile(expected, actual)
    case expected.to_s
    when "wink_tongue"
      icon = "icon1.png"
    when "money"
      icon = "icon2.png"
    when "glasses"
      icon = "icon3.png"
    when "angry_surprise"
      icon = "icon4.png"
    when "lips"
      icon = "icon5.png"
    when "surprise"
      icon = "icon6.png"
    when "big_frown"
      icon = "icon7.png"
    when "wink"
      icon = "icon8.png"
    when "confused"
      icon = "icon9.png"
    when "plain"
      icon = "icon10.png"
    when "tongue"
      icon = "icon11.png"
    when "big_smile"
      icon = "icon12.png"
    when "oh"
      icon = "icon13.png"
    when "frown"
      icon = "icon14.png"
    when "smile"
      icon = "icon15.png"
    else
      icon = "foo.png"
    end
    assert_match icon, actual
  end
end