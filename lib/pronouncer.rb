class Pronouncer
  PRONUNCIATIONS = {
    'kriya' => 'cree uh',
    'sufi' => 'soo fi'
  }

  def self.phonetic(command)
    words = command.split(' ')

    words.map{ |word| pronunciation(word) }.join(' ')
  end

  private

  def self.pronunciation(word)
    PRONUNCIATIONS[word] || word
  end
end
