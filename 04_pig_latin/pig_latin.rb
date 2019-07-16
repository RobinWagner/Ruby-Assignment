#write your code here

def translate(words)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ('a'..'z').to_a.reject { |letter| vowels.include? letter }

  words.split(' ').map do |word|
    if vowels.include? word[0]
      word + 'ay'
    elsif word[0..1] == 'qu'
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include? word[0]
      if consonants.include? word[1]
        if ((consonants.include? word[2]) || (word[1..2] == 'qu'))
          word[3..-1] + word[0..2] + 'ay'
        else
          word[2..-1] + word[0..1] + 'ay'
        end
      else
        word[1..-1] + word[0] + 'ay'
      end
    end
  end.join(' ')
end
