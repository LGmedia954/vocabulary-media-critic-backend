class Sentence < ApplicationRecord
  belongs_to :vocabulary_word
  validates :example, :length => {:maximum => 150, :message => "Limit 150 characters."}

  # Need to check this below
  # def self.valid_input(example)
  # example = gets.chomp
  #   VocabularyWord.sentence.example.include?(vocabulary_word.word)
  # end

end