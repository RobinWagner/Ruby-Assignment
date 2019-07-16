#write your code here

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, repeat=2)
  ("#{word} " * repeat).chop
end

def start_of_word(letters, chars)
  letters[0, chars]
end

def first_word(sentence)
  sentence.split[0]
end

def titleize(words)
  little_words = ['and', 'or', 'over', 'the']
  words.split.each_with_index.map do |word, index|
    (little_words.include?(word) && index > 0) ? word : word.capitalize
  end.join(' ')
end
