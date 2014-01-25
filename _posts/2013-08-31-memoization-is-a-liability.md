---
layout:   post
type:     text
title:    "Memoization is a liability"
tags:     [ Ruby ]
category: cz
---

It's quite common to see [memoization]() like this:

```ruby
class Word
    def initialize(string)
        @string = string
    end

    def letters
        @letters ||= @string.chars
    end

    def do_something
        10.times do |i|
            whatever(letters)
        end
    end
end
```

Since we'll call `letters` multiple times, the code author stores away and reuses the value on the assumption that it’s more efficient.