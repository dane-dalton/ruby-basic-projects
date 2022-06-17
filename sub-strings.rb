def substring(phrase, substr_bin)
  phrase = phrase.downcase
  phrase_arr = phrase.split
  substring_list = phrase_arr.reduce(Hash.new(0)) do |substring_count, word|
    substr_bin.each do |bin_str|
      if word.slice(bin_str)
        substring_count[bin_str] += 1
      end
    end
    substring_count
  end
  substring_list
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Enter a word or phrase to search for substrings in the dictionary"
phrase = gets.chomp
puts substring(phrase, dictionary)