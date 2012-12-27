text2num = require('../src/text2num').text2num

chai = require 'chai'
chai.should()

1.should.equal text2num("one")
12.should.equal text2num("twelve")
72.should.equal text2num("seventy two")
300.should.equal text2num("three hundred")
1200.should.equal text2num("twelve hundred")
12304.should.equal text2num("twelve thousand three hundred four")
6000000.should.equal text2num("six million")
6400005.should.equal text2num("six million four hundred thousand five")
123456789012.should.equal text2num("one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand twelve")
4000000000000000000000000000000000.should.equal text2num("four decillion")

text2num("five-hundred and five").should.equal 505