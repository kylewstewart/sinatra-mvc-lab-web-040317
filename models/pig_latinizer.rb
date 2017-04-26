class PigLatinizer

  def to_pig_latin(phrase)
    phrase.split(' ').collect {|word| piglatinize(word)}.join(' ')
  end

  def piglatinize(word)
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    if vowels.include?(word[0])
        translation = word + 'way'
    else
      consonant = ''
      word.split('').each do |char|
        break if vowels.include?(char)
        consonant += char
      end
      translation = word[consonant.length..-1] + consonant + 'ay'
    end
    translation
  end

end
