require('rspec')
require('anagrams_and_antigrams')

describe('anagrams_and_antigrams') do
  it("checks if two words are not anagrams if they contain different numbers of characters") do
    new_word = Word.new("elbow")
    expect(new_word.anagrams_and_antigrams("belowed")).to(eq("These words are not anagrams."))
  end
  it("checks if two words are anagrams if they have the same length and content.") do
    new_word = Word.new("elbow")
    expect(new_word.anagrams_and_antigrams("below")).to(eq("These words are anagrams."))
  end
  it("accounts for the possibility that words might have different cases") do
    new_word = Word.new("Elbow")
    expect(new_word.anagrams_and_antigrams("Below")).to(eq("These words are anagrams."))
  end
  it("accounts for the possibility that words might be palindromes") do
    new_word = Word.new("Hello")
    expect(new_word.anagrams_and_antigrams("Olleh")).to(eq("These words are palindromes."))
  end
end
