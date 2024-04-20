koper - Controversial standard class operator set
===

    It extends some standard classes with operators whose mathematical and logical meaning is difficult to justify.


Installation
---
```
gem install koper
```

Usage
---
### 1. Complete example
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

p array >> 2       # => [3, 4]
```

### 2. dig
```RUBY
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
```


Authors
---
- Łukasz Pomietło (oficjalnyadreslukasza@gmail.com)
