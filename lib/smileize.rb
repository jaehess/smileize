module Smileize
  PATH = "/images/smileys/icons"
  SMILES = [/\;\-?p/i, /\$\-?\)/, /8\-?\)/, /\>\:\-?\(/, /\:\-?\*/, /\:\-?o/i, /\:\-?c/i, /\;\-?\)/, 
    /\:\-?s/i, /\:\-?\|/, /\:\-?p/i, /\:\-?D/i, /\:\-?\?/, /\:\-?\(/, /\:\-?\)/]
  def to_icon(key)
    return "<img class='smiley' src='#{PATH}/icon#{SMILES.index(key) + 1}.png' alt='smiley' />"
  end
  module_function :to_icon
end
  
class String
  def smileize
    Smileize::SMILES.each do |smile|
      if self =~ smile
        self.gsub!(smile, Smileize.to_icon(smile))
      end
    end
    self
  end
end