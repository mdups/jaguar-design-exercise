class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    marklar_string = ""
    for word in str.split(' ') do
      
      if word.length > 4
        # if the final char of a word is not a letter, append it as punctuation, ignore otherwise
        possible_punct = word[-1]
        if [*'a'..'z', *'A'..'Z'].include?(possible_punct)
          possible_punct=''
        end
        
        # check to capitalize marklar or not
        if ("A".."Z").include?(word[0])
          marklar_string += " Marklar#{possible_punct}"
        else
          marklar_string += " marklar#{possible_punct}"
        end
        
      else
        marklar_string += " #{word}"
      end
    end
    # removes prepended space and returns
    return marklar_string[1..-1]
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    val_1 = 1
    val_2 = 1
    ret_val = 0
    # start at 2 to account for initial values of 1,1
    i = 2
    while i < nth.to_i do
      new_val = val_1 + val_2
      val_1 = val_2
      val_2 = new_val
      
      if new_val % 2 == 0
        ret_val+=new_val
      end
      i += 1
    end
    return ret_val
  end

end
