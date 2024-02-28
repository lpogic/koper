class Hash
  def /(key)
    case key
    when Enumerable
      fetch_values *key
    else
      fetch key
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
      super
    end
  end
end