require('rspec')
require('numbers_to_words')

describe('Word#numbers_to_words') do
  it("returns 'one' when given 1") do
    number = Word.new(1)
    expect(number.numbers_to_words()).to(eq("one"))
  end
  it("returns 'eleven' when given 11") do
    number = Word.new(11)
    expect(number.numbers_to_words()).to(eq("eleven"))
  end
  it("returns 'twenty' when given 20") do
    number = Word.new(20)
    expect(number.numbers_to_words()).to(eq("twenty"))
  end
  it("returns 'twentyone' when given 21") do
    number = Word.new(21)
    expect(number.numbers_to_words()).to(eq("twentyone"))
  end
  it("returns 'fiftysix' when given 99") do
    number = Word.new(99)
    expect(number.numbers_to_words()).to(eq("ninetynine"))
  end
  it("returns 'fiftysix' when given 80") do
    number = Word.new(800)
    expect(number.numbers_to_words()).to(eq("eight hundred "))
  end
  it("returns 'fivehundredtwentythree' when given 80") do
    number = Word.new(523)
    expect(number.numbers_to_words()).to(eq("five hundred twentythree"))
  end
  it("returns 'fifty thousand five hundred fiftysix' when given 50556") do
    number = Word.new(50556)
    expect(number.numbers_to_words()).to(eq("fifty thousand five hundred fiftysix"))
  end
  it("returns 'fifty thousand' when given 50000") do
    number = Word.new(100000)
    expect(number.numbers_to_words()).to(eq("one hundred  thousand "))
  end
  it("returns 'one million' when given 1000000") do
    number = Word.new(1200000)
    expect(number.numbers_to_words()).to(eq("one million two hundred  thousand "))
  end
  it("returns 'one million' when given 1000000") do
    number = Word.new(1234362)
    expect(number.numbers_to_words()).to(eq("one million two hundred thirtyfour thousand three hundred sixtytwo"))
  end
  it("returns 'one billion' when given 1234567890") do
    number = Word.new(1001234567890)
    expect(number.numbers_to_words()).to(eq("one trillion one billion two hundred thirtyfour million five hundred sixtyseven thousand eight hundred ninety"))
  end

end
