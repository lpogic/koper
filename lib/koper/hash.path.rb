class Hash
  def /(key)
    case key
    when Enumerable
      fetch_values *key
    else
      fetch key, nil
    end
  end

  def &(key)
    case key
    when Enumerable
      slice *key
    else
      slice key
    end
  end

  def !()
    invert
  end

  def +(other)
    case other
    when Hash
      merge other
    else
      raise NoMethodError.new "'+' operator for #{self.class} and #{other.class} is undefined"
    end
  end
end