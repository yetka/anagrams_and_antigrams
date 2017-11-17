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
    if @user_word_upcase == checked_word_upcase.reverse
      return "These words are palindromes."
    elsif @user_word_sort_upcase.eql?(checked_word_sort_upcase)
      return "These words are anagrams."
    elsif @user_word.casecmp(checked_word) != 0
      return "These words are not anagrams."
    end
  end
end
