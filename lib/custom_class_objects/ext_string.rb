# -*- mode: Ruby; coding: utf-8; -*-

if RUBY_VERSION[0, 3].to_f >= 1.8 and RUBY_VERSION[0, 3].to_f < 1.9
  require "jcode"  

  class String
    def to_short_name(name_length = 20, continue_string = "...")
      if self.jlength <= name_length
        return self.dup
      end
      
      new_string = ""
      
      self.each_char do |c|
        new_string << c
        
        break if new_string.jlength >= name_length
      end
      
      return new_string << continue_string
    end
  end
end


if RUBY_VERSION[0, 3].to_f >= 1.9

  class String
    def to_short_name(name_length = 20, continue_string = "...")
      if self.length <= name_length
        return self.dup
      end
      
      return self[0, name_length]
    end
  end

end
