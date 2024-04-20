require 'koper'

hash = {
  a: 1,
  b: {
    c: 2
  },
  d: [
    5,
    {
      e: 5
    }
  ]
}

p hash/:b/:c    # => 2
p hash/:x/:y    # => nil
p hash/:d/1/:e  # => 5