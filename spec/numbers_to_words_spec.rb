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
    number = Word.new(80)
    expect(number.numbers_to_words()).to(eq("eighty"))
  end

end
