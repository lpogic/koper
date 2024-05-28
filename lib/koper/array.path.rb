class Array
  def /(other)
    self[other]
  end

  def >>(count)
    pop count
    self
  end

  alias_method :_insert, :[]=
  
  def []=(*a)
    a.size == 1 ? append(a.first) : _insert(*a)
    a.last
  end
end