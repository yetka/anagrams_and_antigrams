require('rspec')
require('anagrams_and_antigrams')

describe('anagrams_and_antigrams') do
  it("checks if two words are anagrams if they have the same length and content") do
    new_word = Word.new("elbow")
    expect(new_word.anagrams_and_antigrams("below")).to(eq("elbow and below are anagrams."))
  end
  it("accounts for the possibility that words might have different cases") do
    new_word = Word.new("Elbow")
    expect(new_word.anagrams_and_antigrams("Below")).to(eq("Elbow and Below are anagrams."))
  end
  it("accounts for the possibility that words might be palindromes") do
    new_word = Word.new("Hello")
    expect(new_word.anagrams_and_antigrams("Olleh")).to(eq("Hello and Olleh are palindromes."))
  end
  it("checks if the inputs are words") do
    new_word = Word.new("BOwl")
    expect(new_word.anagrams_and_antigrams("bllw")).to(eq("You need to input actual words!"))
  end
  it("checks if two words are antigrams") do
    new_word = Word.new("yes")
    expect(new_word.anagrams_and_antigrams("cat")).to(eq("yes and cat have no letter matches and are antigrams."))
  end
  it("accounts for multiple words being anagrams or antigrams") do
    new_word = Word.new("elbow")
    expect(new_word.anagrams_and_antigrams("below, tank")).to(eq("elbow and below are anagrams.elbow and tank have no letter matches and are antigrams."))
  end
end
