# text2num.js

Convert English phrases to their numerical equivalent. Code translated from and embellished on: [https://github.com/ghewgill/text2num](https://github.com/ghewgill/text2num)

[![Build Status](https://travis-ci.org/c0bra/text2num.js.png)](https://travis-ci.org/c0bra/text2num.js)

## Installation

```
npm install text2num
```

## Usage

```
require('text2num')

# Simple
number = text2num("three")
# number == 3

# Longer
text2num("sixty thousand five hundred two")
# 60502

# Use hyphens if you like
text2num("six-hundred three")
# 603

# And the word "and"
text2num("six-hundred and three")
# 603

# Use decimals
text2num("fifty point two")
# 50.2

text2num("fifty dot two")
# 50.2

# Longer decimals
text2num("fifty point two hundred one")
# 50.201

text2num("fifty point two thousand and fifty two")
# 50.2052
```

## Additions welcome!

Just send a pull request
