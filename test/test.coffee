text2num = require('../src/text2num')

chai = require 'chai'
chai.should()

describe "An empty string", ->
  it "should return an empty string", ->
    text2num("").should.equal ""

describe "Simple phrases", ->
  it "should work", ->
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

# Mix case
describe "Mixed case", ->
  it "should work", ->
    text2num("FIVE hundred AND five").should.equal 505

# Hyphens
describe "Hyphens", ->
  it "should work", ->
    text2num("five-hundred and five").should.equal 505
    text2num("sixty- thousand three hundred and one").should.equal 60301

# Decimals
describe "Decimals", ->
  it "should work", ->
    text2num("fifty point two").should.equal 50.2
    text2num("fifty dot two").should.equal 50.2
    text2num("fifty point twenty-two").should.equal 50.22
    text2num("fifty point six hundred five").should.equal 50.605
    text2num("fifty point six thousand and five").should.equal 50.6005
    text2num("fifty point two thousand and fifty two").should.equal 50.2052