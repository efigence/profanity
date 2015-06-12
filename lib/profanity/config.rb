require 'yaml'
module Profanity
  class Config
    BLACKLIST = YAML.load_file(File.join(File.dirname(__FILE__), '../..', 'config', 'obscenity.yml'))
  end
end