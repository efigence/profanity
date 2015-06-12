require 'profanity/version'
require 'profanity/config'
require 'profanity/base'

module Profanity extend self
  
  def check(text)
    Profanity::Base.profane?(text)
  end

end
