module FunWithStrings
  def palindrome?
   str = self.gsub(/\W/,"").downcase
   str == str.reverse
  end

  def count_words
    my_hash = {}
    self.downcase.scan(/\w+/).map{|word| my_hash[word] = self.downcase.scan(/\b#{word}\b/).size}
    my_hash
  end

  def anagram_groups
    my_hash = {}
    self.scan(/\w+/).map do |word|
      key = word.downcase.split('').sort.join
      my_hash[key] ||= []
      my_hash[key] << word
    end
    my_hash.values
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
