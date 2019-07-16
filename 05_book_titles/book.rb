class Book
  attr_accessor :title

  def title=(title)
    @title = title.split(' ').each_with_index.map do |word, index|
      (index > 0 && ['and', 'the', 'an', 'a', 'in', 'of'].include?(word)) ? word : word.capitalize  
    end.join(' ')
  end
end
