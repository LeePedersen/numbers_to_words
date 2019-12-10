class Word
  def initialize(number)
    @number = number
  end
  def numbers_to_words()
    number_string = ""
    small_numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    teen_numbers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens_numbers = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    number_array = @number.to_s.chars #check parentheses # .digits - to array method
    original_length = number_array.length
    puts "number array: ", number_array
    puts number_array[0].class
    y = 0
    if @number < 20 && @number > 10
      teens_index = number_array[1].to_i - 1
      number_string << teen_numbers[teens_index]
      number_array = []
    end
    while (y < number_array.length)
      if number_array.length.remainder(3) === 2
        number_string << tens_numbers[(number_array[y]).to_i - 1]
        number_array.shift
      elsif (number_array[y] === "0" && original_length > 1)
        number_array.shift
      else
         number_string << small_numbers[(number_array[y]).to_i]
         number_array.shift
       end
    end
    number_string
  end
end
