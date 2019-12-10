class Word
  def initialize(number)
    @number = number
  end
  def numbers_to_words()
    number_string = ""
    small_numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    x = 0
    string_number = @number.to_s()
    number_array = string_number.chars #check parentheses
    puts "number array: ", number_array
    if @number < 20
      while ( x < small_numbers.length)
        if x === @number
          number_string << small_numbers[x]
        end
        x = x + 1
      end
    elsif number_array[0] === "2"
      if @number.remainder(3) === 2
        number_string << "twenty"
      end
    # else number.split("") = number_array
    end
    number_string
  end
end
