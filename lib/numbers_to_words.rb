class Word
  def initialize(number)
    @number = number
  end
  def numbers_to_words()
    number_string = ""
    small_numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    teen_numbers = ['zero', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens_numbers = ['zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    number_array = @number.to_s.chars #check parentheses # .digits - to array method
    original_length = number_array.length
    puts "number array: ", number_array
    puts number_array[0].class
    y = 0


    while (y < number_array.length)
      # if (number_array[y] === "0" && original_length > 1)
      #   if
      #   number_array.shift
      if number_array.length.remainder(3) === 2
        if number_array.length === 2 && number_array[0] === "1"
          teens_index = number_array[1].to_i
          number_string << teen_numbers[teens_index]
          number_array = []
          number_array.shift
          number_array.shift
        else
        number_string << tens_numbers[(number_array[y]).to_i]
        number_array.shift
      end
      else
         number_string << small_numbers[(number_array[y]).to_i]
         if number_array.length.remainder(3) === 0 && number_array[y] != "0"
           number_string << " hundred "
         elsif number_array.length.remainder(3) === 1 && original_length > 3 && original_length < 7 && number_array[y] != "0"
           number_string << " thousand "
         elsif number_array.length === 7 && original_length < 10
           number_string << " million "
         end
         number_array.shift
       end
       if original_length > 1 && number_string.include?("zero")
          number_string.slice! "zero"
       end

    end
    number_string
  end
end
