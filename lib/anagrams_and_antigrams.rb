class Word
  def initialize(user_word)
    @user_word = user_word
    @user_word_upcase = user_word.upcase
    @user_word_sort = user_word.chars.sort.join
    @user_word_sort_upcase = user_word.upcase.chars.sort.join
  end
  def anagrams_and_antigrams(checked_word)
    checked_word_sort = checked_word.chars.sort.join
    checked_word_sort_upcase = checked_word.upcase.chars.sort.join
    checked_word_upcase = checked_word.upcase
    # vowels = ["a","i","e","o","u","y"]
    # vowels.each do |vowel|
    if (((@user_word_upcase.include? "A") | (@user_word_upcase.include? "E") | (@user_word_upcase.include? "I") | (@user_word_upcase.include? "O") | (@user_word_upcase.include? "U") | (@user_word_upcase.include? "Y")) & ((checked_word_upcase.include? "A") | (checked_word_upcase.include? "E") | (checked_word_upcase.include? "I") | (checked_word_upcase.include? "O") | (checked_word_upcase.include? "U") | (checked_word_upcase.include? "Y")))
      if @user_word_upcase == checked_word_upcase.reverse
        return "These words are palindromes."
      elsif (@user_word_sort_upcase.eql?(checked_word_sort_upcase))
        return "These words are anagrams."
      elsif (@user_word.casecmp(checked_word) != 0)
        return "These words are not anagrams."
      end
    else
      return "You need to input actual words!"
    end
  end
end
