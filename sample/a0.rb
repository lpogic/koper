require 'koper'

hash = {
  a: 1,
  b: 2
}

p hash / :a        # => 1 (#fetch or #fetch_values if right side is an Enumerable)
p hash / [:b, :a]  # => [2, 1]
p hash & :a        # => {:a=>1} (#slice or #slice with splat if right side is an Enumerable)
p hash & [:b, :a]  # => {:b=>2, :a=>1}
p !hash            # => {1=>:a, 2=>:b} (#invert)
p hash + {c: 3}    # => {:a=>1, :b=>2, :c=>3} (#merge)

array = [3, 4, 5, 6]

p array / 2        # => 5 (#[] alias)
p array >> 2       # => [3, 4] (like #pop but returns self)
p array >> 1 << 8  # => [3, 8] (last element swap)
p array[] = 9      # => 9 (like #push but returns right side argument)