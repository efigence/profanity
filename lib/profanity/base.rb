module Profanity
  class Base
    class << self

      def blacklist
        @blacklist = Profanity::Config::BLACKLIST
      end

      def profane?(text)
        profane = false
        blacklist.each do |word|
          if text.include? word
            profane = true; break
          end
        end
        profane
      end

    end
  end
end