class Word
  def initialize(user_word)
    @user_word = user_word
    @user_word_sort = user_word.chars.sort.join
  end
  def anagrams_and_antigrams(checked_word)
    checked_word_sort = checked_word.chars.sort.join
    if @user_word_sort.eql?(checked_word_sort)
      return "These words are anagrams."
    elsif (@user_word <=> checked_word) != 0
      return "These words are not anagrams."
    end
  end
end
