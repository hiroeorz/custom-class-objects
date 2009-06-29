class Object
  def to_under_score
    self.class.to_s.
      gsub(/^./) {|e| e.downcase}.
      gsub(/[a-z][A-Z]/) {|e| e[0, 1] + "_" + e[1, 1].downcase}.
      to_sym
  end
end
