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
