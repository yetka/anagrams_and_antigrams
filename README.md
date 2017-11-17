# Anagrams and Antigrams

#### It's a program to check if words are anagrams .

#### By Malgorzata Haniszewska

## Description
It is a program (using Ruby) to check if words are anagrams. It is true if they contain the exact same letters in a different order.

## Specifications
* Program checks if two words are not anagrams if they contain different numbers of characters.
  * Example Input: "elbow", "belowed"
  * Example Output: "These words are not anagrams."
* Program checks if two words are anagrams if they have the same length and content.
  * Example Input: "elbow", "below"
  * Example Output: "These words are anagrams."
* Program accounts for the possibility that words might have different cases but should still be anagrams.
  * Example Input: "Elbow", "Below"
  * Example Output: "These words are anagrams."
* Program checks if words are palindromes.
  * Example Input: "Hello", "Olleh"
  * Example Output: "These words are palindromes."
* Program checks if the inputs are real English words.
  * Example Input: "BOwl", "bllw"
  * Example Output: "You need to input actual words!"
* If phrases aren't anagrams, program checks whether they are actually "antigrams."
  * Example Input:
  * Example Output:
* Program accounts for multiple words being anagrams or "antigrams."
  * Example Input:
  * Example Output:

## Setup/Installation Requirements

* Copy repository from GitHub to your computer using Terminal command $ git clone
* Change directory to the root directory of this project
* Run $ rspec

## Support and contact details

Contact email: gosia.haniszewska@gmail.com

## Technologies Used

* Ruby

### License

This project is licensed under the MIT License.
