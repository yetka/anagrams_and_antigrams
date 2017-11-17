class Word
  def initialize(user_word)
    @user_word = user_word
  end
  def anagrams_and_antigrams(checked_word)
    if (@user_word <=> checked_word) != 0
      return "These words are not anagrams."
    end
  end  
end
