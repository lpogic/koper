koper
===

Controversial standard class operator set

Installation
---
```
gem install koper
```

Usage
---
```RUBY
require 'koper'

hash = {
  a: 1,
  b: 2
}

array = [3, 4, 5, 6]

p hash / :a        # => 1
p hash / [:b, :a]  # => [2, 1]
p hash & :a        # => {:a=>1}
p hash & [:b, :a]  # => {:b=>2, :a=>1}
p !hash            # => {1=>:a, 2=>:b}
p hash + {c: 3}    # => {:a=>1, :b=>2, :c=>3}
p array / 2        # => 5
p array / (1..2)   # => [4, 5]
```

Authors
---
- Łukasz Pomietło (oficjalnyadreslukasza@gmail.com)
