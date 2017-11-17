class Word
  def initialize(user_word)
    @user_word = user_word
    @user_word_upcase = user_word.upcase
    @user_word_sort = user_word.chars.sort.join
    @user_word_sort_upcase = user_word.upcase.chars.sort.join
    @user_word_upcase_array = @user_word_upcase.split(//)
  end

  def anagrams_and_antigrams(checked_sentence)
    checked_sentence_array = checked_sentence.split(/,/)
    checked_sentence_array.map {|each_word| each_word.gsub!(/[^A-Za-z]/, '')}

    if checked_sentence_array.length == 1
      checked_word = checked_sentence_array.at(0)
      checked_word_sort = checked_word.chars.sort.join
      checked_word_sort_upcase = checked_word.upcase.chars.sort.join
      checked_word_upcase = checked_word.upcase
      checked_word_upcase_array = checked_word_upcase.split(//)

      if (((@user_word_upcase.include? "A") | (@user_word_upcase.include? "E") | (@user_word_upcase.include? "I") | (@user_word_upcase.include? "O") | (@user_word_upcase.include? "U") | (@user_word_upcase.include? "Y")) & ((checked_word_upcase.include? "A") | (checked_word_upcase.include? "E") | (checked_word_upcase.include? "I") | (checked_word_upcase.include? "O") | (checked_word_upcase.include? "U") | (checked_word_upcase.include? "Y")))
        if (@user_word_sort_upcase.eql?(checked_word_sort_upcase))
          if @user_word_upcase == checked_word_upcase.reverse
            return "These words are palindromes."
          else
            return "These words are anagrams."
          end
        elsif @user_word_upcase_array - checked_word_upcase_array == @user_word_upcase_array
          return "These words have no letter matches and are antigrams."
        else
          return "These words are not anagrams."
        end
      else
        return "You need to input actual words!"
      end
    else
      # checked_sentence_array.each do |checked_sentence_word|
      # end
    end
  end
end
