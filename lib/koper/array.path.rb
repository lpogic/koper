class Array
  def /(other)
    self[other]
  end

  def >>(count)
    pop count
    self
  end
end